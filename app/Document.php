<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    protected $fillable = [
        'file',
        'application_id',
        'document_type_id'
    ];
    public function documentType(){
        return $this->belongsTo(DocumentType::class,'document_type_id');
    }
}
