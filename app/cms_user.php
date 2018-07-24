<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cms_user extends Model
{
    
    protected $fillable = [
        'name', 'photo', 'email','password','contact','birth_date','address','dept_name','position','last_institute','note','last_institute','status','varifyToken',
    ]; 
}
