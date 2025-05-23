local function _ShowAllItemsInShops()
    if ReadLong(0x2FAD62) == 0x43B70F0D74D68541 then --Epic Global 1.0.0.10
        WriteByte(0x2FAD66,0)
    elseif ReadLong(0x2FABA2) == 0x43B70F0D74D68541 then --Epic JP 1.0.0.10
        WriteByte(0x2FABA6,0)
    end
end

return {
    GameVersionString = "Epic Games 1.0.0.10",
    Now = 0x0716DF8,
    Sve = 0x2A0BFC0,
    Save = 0x09A9330,
    Obj0Pointer = 0x2A24AB0,
    Sys3Pointer = 0x2AE58D0,
    Btl0Pointer = 0x2AE58D8,
    ARDPointer = 0x2A0F2A8,
    Music = 0x0ABA7C4,
    Pause = 0x0ABB2F8,
    React = 0x2A10BE2,
    Cntrl = 0x2A16C68,
    Timer = 0x0ABB2D0,
    Songs = 0x0B657F4,
    SongExcellentChainScore = 0x0B657F8,
    SwimThisWayScore = 0x0B65804,
    GScre = 0x072AEB0,
    GMdal = 0x072B044,
    GKill = 0x0AF6BC6,
    CamTyp = 0x0718A98,
    GamSpd = 0x0717214,
    CutNow = 0x0B64A18,
    CutLen = 0x0B64A34,
    CutSkp = 0x0B64A1C,
    BtlTyp = 0x2A10E84,
    BtlEnd = 0x2A0F760,
    TxtBox = 0x074DCB0,
    DemCln = 0x2A0F334,
    Slot1    = 0x2A23018,
    NextSlot = 0x278,
    Point1   = 0x2A0F4C8,
    NxtPoint = 0x50,
    Gauge1   = 0x2A0F5B8,
    NxtGauge = 0x48,
    Menu1    = 0x2A10B90,
    NextMenu = 0x8,
    MSN = 0x0BF2C80,
    Input = 0x29FAD70,
    SoftReset = 0xABA6DA,
    RNG = 0x753350,
    Spawns = 0x2AE57F8,
    Continue = 0x29FB000,
    SaveSelect = 0x2616DA0,
    SveAddr = 0x9BA3B0,
    LoadingIndicator = 0x8EC050,
    CurrentOpenMenu = 0x743350,
    WriteLogic = 0x713438,
    -- TODO: Fill in values for these once they're found again
    -- HBBGM = ?,
    -- ARDEvent = ?,
    GummiSkip = 0x9AD327,
    ShowAllItemsInShopsFunction = _ShowAllItemsInShops,
}
