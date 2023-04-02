<?php

namespace App\Filters;

use App\Filters\ApiFilter;

class SubjectsFilter extends ApiFilter
{
    protected $safeParams = [
        'major' => ['eq'],
    ];

    protected $operatorMap = [
        'eq' => '='
    ];
}
