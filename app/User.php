<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable implements MustVerifyEmail
{
    use HasRoles;
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

   

    public function setPasswordAttribute($password)
    {   
        $this->attributes['password'] = bcrypt($password);
    }

    public function verifyUser()
    {
        return $this->hasOne('App\Model\VerifyUser');
    }

    public function playlists()
    {
        return $this->hasMany('App\Model\Playlist');
    }

    public function receipts()
    {
        return $this->hasMany('App\Model\Receipt');
    }

    public function blogs()
    {
        return $this->hasMany('App\Model\Blog');
    }

    public function events()
    {
        return $this->hasMany('App\Model\Event');
    }

    public function comments()
    {
        return $this->hasMany('App\Model\Comment');
    }
}
