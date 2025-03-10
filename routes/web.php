<?php

use Illuminate\Support\Facades\Route;



Route::get('/', function () {return view('auth.login');});
Route::get('login', [\App\Http\Controllers\UserConfig\UserInfoController::class, 'loginPage'])->name('login');
Route::post('loginPost', [\App\Http\Controllers\UserConfig\UserInfoController::class, 'loginPost'])->name('loginPost');

Route::group(['middleware' => 'auth'], function () {
    Route::get('GetMenu', [\App\Http\Controllers\SidebarController::class, 'index']);

    Route::post('/logout', [\App\Http\Controllers\UserConfig\UserInfoController::class, 'logout'])->name('logout');

    Route::get('dashboard', [\App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard');
    Route::resource('dashboard', \App\Http\Controllers\DashboardController::class);

    Route::resource('UserInfo', \App\Http\Controllers\UserConfig\UserInfoController::class);
    Route::post('/users/data', [\App\Http\Controllers\UserConfig\UserInfoController::class, 'getUserData'])->name('users.data');

    Route::resource('auxiliaryItemType', \App\Http\Controllers\ItemSetup\AuxiliaryItemTypeController::class);
    Route::post('/AuxiliaryItemType/data', [\App\Http\Controllers\ItemSetup\AuxiliaryItemTypeController::class, 'getdata'])->name('auxiliaryItemType.data');

    Route::resource('mjrCat', \App\Http\Controllers\ItemSetup\MjrCatController::class);
    Route::get('getMajor', [\App\Http\Controllers\ItemSetup\MjrCatController::class, 'getMajor'])->name('getMajor');
    Route::post('/MjrCat/data', [\App\Http\Controllers\ItemSetup\MjrCatController::class, 'getdata'])->name('mjrCat.data');

    Route::resource('mjrSubCat', \App\Http\Controllers\ItemSetup\MjrSubCatController::class);
    Route::post('/MjrSubCat/data', [\App\Http\Controllers\ItemSetup\MjrSubCatController::class, 'getdata'])->name('mjrSubCat.data');

    Route::resource('mjrSubCat', \App\Http\Controllers\ItemSetup\MjrSubCatController::class);
    Route::post('/MjrSubCat/data', [\App\Http\Controllers\ItemSetup\MjrSubCatController::class, 'getdata'])->name('mjrSubCat.data');

    Route::resource('measureUnit', \App\Http\Controllers\ItemSetup\MeasureUnitController::class);
    Route::post('/MeasureUnit/data', [\App\Http\Controllers\ItemSetup\MeasureUnitController::class, 'getdata'])->name('measureUnit.data');

    Route::resource('itemMst', \App\Http\Controllers\ItemSetup\ItemMstController::class);
    Route::post('/ItemMst/data', [\App\Http\Controllers\ItemSetup\ItemMstController::class, 'getdata'])->name('itemMst.data');

    Route::resource('itemAttribute', \App\Http\Controllers\ItemSetup\ItemAttributeController::class);
    Route::get('getAttribute', [\App\Http\Controllers\ItemSetup\ItemAttributeController::class, 'getAttribute'])->name('getAttribute');
    Route::post('/ItemAttribute/data', [\App\Http\Controllers\ItemSetup\ItemAttributeController::class, 'getdata'])->name('itemAttribute.data');

    Route::resource('itemAttributeValue', \App\Http\Controllers\ItemSetup\ItemAttributeValueController::class);
    Route::post('/ItemAttributeValue/data', [\App\Http\Controllers\ItemSetup\ItemAttributeValueController::class, 'getdata'])->name('itemAttributeValue.data');

    Route::resource('itemInfo', \App\Http\Controllers\ItemSetup\ItemInfoController::class);
    Route::get('showItemsDropDown', [\App\Http\Controllers\ItemSetup\ItemInfoController::class, 'showItemsDropDown']);
    Route::post('/ItemInfo/data', [\App\Http\Controllers\ItemSetup\ItemInfoController::class, 'getdata'])->name('itemInfo.data');

});
