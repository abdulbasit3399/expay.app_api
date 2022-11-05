<?php

namespace App\Services;

use Illuminate\Contracts\Hashing\Hasher;
use Illuminate\Hashing\AbstractHasher;
 
class MagentoHasher extends AbstractHasher implements Hasher
{
    const CHARS_LOWERS = 'abcdefghijklmnopqrstuvwxyz';
    const CHARS_UPPERS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const CHARS_DIGITS = '0123456789';

    /**
     * Hash the given value.
     *
     * @param  string $value
     * @param  array $options
     * @return string
     */
    public function make($value, array $options = array())
    {
        $salt = array_key_exists('salt', $options) ? $options['salt'] : 2;
        if (is_integer($salt)) {
            $salt = $this->getRandomString($salt);
        }

        return $salt === false ? $this->hash($value) : $this->hash($salt . $value) . ':' . $salt;
    }

    /**
     * Check the given plain value against a hash.
     *
     * @param  string $value
     * @param  string $hashedValue
     * @param  array $options
     * @return bool
     */
    public function check($value, $hashedValue, array $options = array())
    {
        $hashArr = explode(':', $hashedValue);

        switch (count($hashArr)) {
            case 1:
                return $this->hash($value) === $hashedValue;
            case 2:
            case 3:
                return $this->hash($hashArr[1] . $value) === $hashArr[0];
        }

        return false;
    }

    /**
     * Check if the given hash has been hashed using the given options.
     *
     * @param  string $hashedValue
     * @param  array $options
     * @return bool
     */
    public function needsRehash($hashedValue, array $options = array())
    {
        return false;
    }

    private function getRandomString($len, $chars = null)
    {
        if (is_null($chars)) {
            $chars = self::CHARS_LOWERS . self::CHARS_UPPERS . self::CHARS_DIGITS;
        }
        mt_srand(10000000 * (double)microtime());
        for ($i = 0, $str = '', $lc = strlen($chars) - 1; $i < $len; $i++) {
            $str .= $chars[mt_rand(0, $lc)];
        }

        return $str;
    }

    /**
     * Hash a string
     *
     * @param string $data
     * @return string
     */
    private function hash($data)
    {
        return hash('sha256', $data);
    }
}
