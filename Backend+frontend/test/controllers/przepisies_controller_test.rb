require "test_helper"

class PrzepisiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @przepisy = przepisies(:one)
  end

  test "should get index" do
    get przepisies_url
    assert_response :success
  end

  test "should get new" do
    get new_przepisy_url
    assert_response :success
  end

  test "should create przepisy" do
    assert_difference("Przepisy.count") do
      post przepisies_url, params: { przepisy: { czas_przygotowania: @przepisy.czas_przygotowania, kategoria: @przepisy.kategoria, nazwa: @przepisy.nazwa, ocena_uzytkownikow: @przepisy.ocena_uzytkownikow, stopien_trudnosci: @przepisy.stopien_trudnosci } }
    end

    assert_redirected_to przepisy_url(Przepisy.last)
  end

  test "should show przepisy" do
    get przepisy_url(@przepisy)
    assert_response :success
  end

  test "should get edit" do
    get edit_przepisy_url(@przepisy)
    assert_response :success
  end

  test "should update przepisy" do
    patch przepisy_url(@przepisy), params: { przepisy: { czas_przygotowania: @przepisy.czas_przygotowania, kategoria: @przepisy.kategoria, nazwa: @przepisy.nazwa, ocena_uzytkownikow: @przepisy.ocena_uzytkownikow, stopien_trudnosci: @przepisy.stopien_trudnosci } }
    assert_redirected_to przepisy_url(@przepisy)
  end

  test "should destroy przepisy" do
    assert_difference("Przepisy.count", -1) do
      delete przepisy_url(@przepisy)
    end

    assert_redirected_to przepisies_url
  end
end
