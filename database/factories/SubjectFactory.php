<?php

namespace Database\Factories;

use Carbon\Carbon;
use App\Models\Subject;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Subjects>
 */
class SubjectFactory extends Factory
{

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
      $subject = $this->faker->randomElement([
        "Science",
        "Mathematics",
        "English",
        "MAPEH",
        "Computer",
        "Chemistry",
        "Economics",
        "Araling Panlipunan",
        "Music"]);

        return [
          'teacher_id' => $this->faker->numberBetween(1, 10),
          'major' => $subject,
        ];
    }
}
