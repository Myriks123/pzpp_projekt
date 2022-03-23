require "application_system_test_case"

class PrzepisiesTest < ApplicationSystemTestCase
  setup do
    @przepisy = przepisies(:one)
  end

  test "visiting the index" do
    visit przepisies_url
    assert_selector "h1", text: "Przepisies"
  end

  test "should create przepisy" do
    visit przepisies_url
    click_on "New przepisy"

    fill_in "Czas przygotowania", with: @przepisy.czas_przygotowania
    fill_in "Kategoria", with: @przepisy.kategoria
    fill_in "Nazwa", with: @przepisy.nazwa
    fill_in "Ocena uzytkownikow", with: @przepisy.ocena_uzytkownikow
    fill_in "Stopien trudnosci", with: @przepisy.stopien_trudnosci
    click_on "Create Przepisy"

    assert_text "Przepisy was successfully created"
    click_on "Back"
  end

  test "should update Przepisy" do
    visit przepisy_url(@przepisy)
    click_on "Edit this przepisy", match: :first

    fill_in "Czas przygotowania", with: @przepisy.czas_przygotowania
    fill_in "Kategoria", with: @przepisy.kategoria
    fill_in "Nazwa", with: @przepisy.nazwa
    fill_in "Ocena uzytkownikow", with: @przepisy.ocena_uzytkownikow
    fill_in "Stopien trudnosci", with: @przepisy.stopien_trudnosci
    click_on "Update Przepisy"

    assert_text "Przepisy was successfully updated"
    click_on "Back"
  end

  test "should destroy Przepisy" do
    visit przepisy_url(@przepisy)
    click_on "Destroy this przepisy", match: :first

    assert_text "Przepisy was successfully destroyed"
  end
end
