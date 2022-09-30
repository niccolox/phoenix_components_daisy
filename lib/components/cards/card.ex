defmodule PhoenixComponentsDaisy.Card do
  use Phoenix.Component

  @doc """
  https://daisyui.com/components/card/#card
  
  """


  def static(assigns) do
    ~H"""
    <div class="card card-compact w-96 bg-base-100 shadow-xl">
    <figure><img src="https://placeimg.com/400/225/arch" alt="Shoes" /></figure>
    <div class="card-body">
    <h2 class="card-title">Shoes!</h2>
    <p>If a dog chews shoes whose shoes does he choose?</p>
    <div class="card-actions justify-end">
      <button class="btn btn-primary">Buy Now</button>
    </div>
    </div>
    </div>
    """
  end

  attr :card_image_url, :string, default: "https://placeimg.com/400/225/arch"
  attr :card_image_alt, :string, default: "Shoes"  
  attr :card_title, :string, default: "Shoes!"  
  attr :card_body, :string, default: "If a dog chews shoes whose shoes does he choose?"  
  attr :card_action, :string, default: "Buy Now"  

  def dynamic(assigns) do
    ~H"""
    <div class="card card-compact w-96 bg-base-100 shadow-xl">
    <figure><img src="{@card_image_url}" alt="{@card_image_alt}" /></figure>
    <div class="card-body">
    <h2 class="card-title"><%= @card_title %></h2>
    <p><%= @card_body %></p>
    <div class="card-actions justify-end">
      <button class="btn btn-primary"><%= @card_action %></button>
    </div>
    </div>
    </div>
    """
  end



end
