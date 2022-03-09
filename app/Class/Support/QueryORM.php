<?php

namespace Class\Support;

use Class\Models\Model;

class QueryORM
{

    static function formCreateQuery(Model $model, string $table): string
    {
        $sql = "INSERT INTO $table ";
        $columnsContainer = [];
        $valuesContainer = [];

        foreach ($model as $key => $value) {
            $columnsContainer[] = "`$key`";
            $valuesContainer[] = "'$value'";
        }
        $sql .= "(" . join(', ', $columnsContainer) . ") VALUES (" . join(', ', $valuesContainer) . ");";

        return $sql;
    }

    static function formUpdateQuery(Model $model, string $table): array
    {
        $sql = "UPDATE $table SET";
        $values = [];
        foreach ($model as $key => $value) {
            $sql .= " $key=?,";
            $values[] = htmlspecialchars($value);
        }
        $sql = rtrim($sql, ',');
        $sql .= " WHERE `id`=?";
        $values[] = $model->id;

        return ['sql' => $sql, 'data' => $values];
    }

    static function formFindQuery(string $table): string
    {

        return "SELECT * FROM " . $table . " WHERE `id` = ?";
    }

    static function formRemoveQuery(string $table, int $id): string
    {

        return "DELETE FROM `$table` WHERE `id`= $id";
    }

    static function formFindAllQuery(string $table): string
    {
        return "SELECT * FROM $table";
    }
}