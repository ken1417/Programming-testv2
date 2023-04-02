<?php

namespace App\Filters;

use App\Filters\ApiFilter;

class TeachersFilter extends ApiFilter
{
    protected $safeParams = [
        'full_name' => ['eq'],
        'date_hired'=>['eq']
    ];

    protected $columnMap = [
          'teacher_id' => 'teacher_id',
      ];

    protected $operatorMap = [
      'eq' => '=',
      'lt' => '<',
      'lte' => '<=',
      'gt' => '>',
      'gte' => '>=',
    ];
}
