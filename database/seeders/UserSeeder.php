<?php
// UserSeeder.php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Doctor;
use App\Models\Patient;

class UserSeeder extends Seeder
{
    public function run()
    {
        // Create an admin user
        $admin = User::firstOrCreate([
            'email' => 'admin@doctorapp.com',
        ], [
            'name' => 'Super Admin',
            'password' => bcrypt('nit@2024'),
        ]);
        $admin->assignRole('super_admin');

        // Create a doctor user
        $doctorUser = User::firstOrCreate([
            'email' => 'doctor@doctorapp.com',
        ], [
            'name' => 'Michael K Zuberi',
            'password' => bcrypt('nit@2024'),
        ]);
        $doctorUser->assignRole('doctor');

        // Create a doctor record
        $doctor = Doctor::firstOrCreate([
            'email' => 'doctor@doctorapp.com',
        ], [
            'name' => 'Michael K Zuberi',
            'contact' => '+255-756-787-890',
            'address' => 'Dar es salaam',
            'qualification' => 'Masters In Doctor of Medicine',
            'specialty' => 'Cardiac Specialist',
            'status' => 'active',
        ]);
        $doctor->user_id = $doctorUser->id;
        $doctor->save();

        // Create a patient user
        $patientUser = User::firstOrCreate([
            'email' => 'patient@doctorapp.com',
        ], [
            'name' => 'Najim Z Ahmad',
            'password' => bcrypt('nit@2024'),
        ]);
        $patientUser->assignRole('patient');

        // Create a patient record
        $patient = Patient::firstOrCreate([
            'email' => 'patient@doctorapp.com',
        ], [
            'name' => 'Najim Z Ahmad',
            'contact' => '+255-787-654 676',
            'address' => 'Dar es salaam',
            'contact_person' => 'Contact Person',
            'status' => 'active',
        ]);
        $patient->user_id = $patientUser->id;
        $patient->save();

        // Add more users and assign roles as needed
    }
}
