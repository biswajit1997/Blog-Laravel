<?php

namespace App\Imports;

use App\User;
use App\Models\Import;
use Maatwebsite\Excel\Concerns\ToModel;

class UsersImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Import([
            'name'     => $row[0],
            'email'    => $row[1], 
            'mobile'   => $row[2],
            'age'      => $row[3],
        ]);
      
    }
}
