-- ========================================================================
-- MOY.LUA - MODERNES UI INTERFACE (STANDALONE VORLAGE)
-- ========================================================================

-- Menü-Struktur und Design-Einstellungen
local MoyMenu = {
    Name = "Moy Project // Premium UI",
    Version = "v1.4.2",
    CurrentTab = "Main",
    Tabs = { "Main", "Visuals", "Misc", "Skins" },
    
    -- Farbpalette (Dunkles Theme mit neongrünen Akzenten)
    Theme = {
        BgColor      = { 15, 15, 20, 255 },
        HeaderColor  = { 25, 25, 35, 255 },
        AccentColor  = { 57, 255, 20, 255 }, -- Neon-Grün
        TextColor    = { 255, 255, 255, 255 },
        MutedText    = { 120, 120, 130, 255 }
    }
}

-- Speicher für die Buttons und Regler (Zustände)
local UI_State = {
    EnableFeatureX = false,
    EnableFeatureY = false,
    SliderValue    = 50,
    CrosshairScale = 2,
    CustomName     = "User",
    SafeMode       = true
}

-- ========================================================================
-- ZEICHEN-LOGIK (GUI RENDERING)
-- ========================================================================
function RenderMoyUI()
    -- Hauptfenster erstellen (Breite: 550px, Höhe: 420px)
    UI.BeginWindow(MoyMenu.Name .. " | " .. MoyMenu.Version, MoyMenu.Theme.BgColor, 550, 420)
    
    -- Header/Kopfzeile zeichnen
    UI.DrawHeader(MoyMenu.Theme.HeaderColor)
    UI.DrawText("Welcome back, " .. UI_State.CustomName, 20, 15, MoyMenu.Theme.TextColor)
    
    -- Navigation (Tabs an der linken Seite)
    UI.BeginSidebar(120) -- 120 Pixel Breite für die Leiste
    for _, tabName in ipairs(MoyMenu.Tabs) do
        if UI.DrawTabButton(tabName, MoyMenu.CurrentTab == tabName, MoyMenu.Theme.AccentColor) then
            MoyMenu.CurrentTab = tabName
        end
    end
    UI.EndSidebar()
    
    -- --------------------------------------------------------------------
    -- INHALT JE NACH AKTIVEM TAB
    -- --------------------------------------------------------------------
    UI.BeginContentArea(140, 50) -- Versatz, damit der Text neben der Sidebar ist
    
    if MoyMenu.CurrentTab == "Main" then
        UI.DrawLabel("Main Core Settings", MoyMenu.Theme.AccentColor)
        UI.DrawSeparator()
        
        -- Checkboxen (An/Aus Schalter)
        UI_State.EnableFeatureX = UI.Checkbox("Main Controller Active", UI_State.EnableFeatureX)
        UI_State.SafeMode       = UI.Checkbox("Bypass Security Layer (Simulation)", UI_State.SafeMode)
        
        -- Ein einfacher Schieberegler (Slider)
        UI_State.SliderValue    = UI.SliderInt("Performance Limit", 0, 100, UI_State.SliderValue)
        
    elseif MoyMenu.CurrentTab == "Visuals" then
        UI.DrawLabel("Screen Interface Options", MoyMenu.Theme.AccentColor)
        UI.DrawSeparator()
        
        UI_State.EnableFeatureY = UI.Checkbox("Draw Screen Overlay", UI_State.EnableFeatureY)
        UI_State.CrosshairScale = UI.SliderInt("Indicator Size", 1, 10, UI_State.CrosshairScale)
        
    elseif MoyMenu.CurrentTab == "Misc" then
        UI.DrawLabel("Miscellaneous", MoyMenu.Theme.AccentColor)
        UI.DrawSeparator()
        
        UI.DrawText("This tab contains non-gameplay elements.", 140, 100, MoyMenu.Theme.MutedText)
        
    elseif MoyMenu.CurrentTab == "Skins" then
        UI.DrawLabel("Theme Customization", MoyMenu.Theme.AccentColor)
        UI.DrawSeparator()
        
        if UI.Button("Reset to Default Theme", 120, 30) then
            MoyMenu.Theme.AccentColor = { 57, 255, 20, 255 }
            UI.PrintConsole("[Moy] Theme zurückgesetzt.")
        end
    end
    
    UI.EndContentArea()
    UI.EndWindow()
end

-- ========================================================================
-- EVENT REGISTER (Schnittstellen-Verknüpfung)
-- ========================================================================
-- Registriert das Interface im Zeichen-System
MenuSystem.RegisterCallback("OnRender", RenderMoyUI)

-- Zeigt beim Laden eine Nachricht in der Cheat-Konsole an
UI.PrintConsole("=======================================")
UI.PrintConsole(">> Moy.lua erfolgreich geladen! <<")
UI.PrintConsole("=======================================")
