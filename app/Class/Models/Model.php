<?php

namespace Class\Models;

use Class\ORM\Orm;

abstract class Model
{

    static protected Orm $orm;

    public function __construct(array $data = null)
    {
        if ($data) {
            $this->fillEmptyObject($data);
        }

        return $this;
    }

    private function fillEmptyObject(array $data): void
    {
        foreach ($data as $attribute => $value) {
            $this->$attribute = $value;
        }
    }

    private static function setStaticORM():void
    {
        self::$orm = new Orm();
    }

    private static function getStaticORM(): object
    {
        self::setStaticORM();
        return self::$orm;
    }

    static public function find(int $id): Model
    {
        return static::getStaticORM()->find($id, get_called_class());
    }

    static public function findAll(): array
    {
        return static::getStaticORM()->findAll(get_called_class());
    }

    public function save()
    {
        return static::getStaticORM()->save($this, get_called_class());
    }

    static public function remove(int $id): bool
    {
        return static::getStaticORM()->remove($id, get_called_class());
    }

}