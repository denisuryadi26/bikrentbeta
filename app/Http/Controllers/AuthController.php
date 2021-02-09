<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class AuthController extends Controller
{
    public function signup(Request $req)
    {
        $req->validate([
            'name'     => 'required|string',
            'email'    => 'required|string|email|unique:users',
            // 'password' => 'required|string|confirmed'
        ]);

        $user = new User([
            'name'     => $req->name,
            'email'    => $req->email,
            'password' => bcrypt($req->password)
        ]);

        $user->save();

        return response()->json([
            'message' => 'User register successfully!'
        ], 201);
    }

    public function login(Request $req)
    {
        $req->validate([
            'email'    => 'required|string',
            'password' => 'required|string'
        ]);

        $credentials = request(['email', 'password']);

        if(!Auth::attemp($credentials));

        return response()->json([
            'message' => 'Unautorized'
        ], 401);

        $user->$req->user();

        $tokenResult = $user->createToken('Personal Access Token');
        $token = $tokenResult->token;

        $token->save();

        return response()->json([
            'token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'message' => 'Login Berhasil!'
        ]);
    }

    public function logout(Request $req)
    {
        $req->user->token()->revoke();

        return response()->json([
            'message' => 'Logout successfully!'
        ]);
    }

    public function user(Request $req)
    {
        return response()->json($req->user());
    }
}
