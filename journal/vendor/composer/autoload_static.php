<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit97331a7740208eb59351237d7525be58
{
    public static $prefixLengthsPsr4 = array (
        'C' => 
        array (
            'Core\\' => 5,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Core\\' => 
        array (
            0 => __DIR__ . '/../..' . '/Core',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit97331a7740208eb59351237d7525be58::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit97331a7740208eb59351237d7525be58::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit97331a7740208eb59351237d7525be58::$classMap;

        }, null, ClassLoader::class);
    }
}