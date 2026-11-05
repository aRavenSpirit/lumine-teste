/**
 * Calcula se a cor do texto deve ser clara (#FFFFFF) ou escura (#000000)
 * com base na luminância da cor HEX do background.
 */
function obterCorTextoContraste(hexcolor) {
    if (!hexcolor) return '#000000';

    // Remove o '#' se existir
    hexcolor = hexcolor.replace('#', '');

    // Se for formato curto (ex: #fff), expande para 6 caracteres (ex: #ffffff)
    if (hexcolor.length === 3) {
        hexcolor = hexcolor.split('').map(c => c + c).join('');
    }

    if (hexcolor.length !== 6) return '#000000';

    // Converte HEX para RGB (0 a 255)
    const r = parseInt(hexcolor.substring(0, 2), 16);
    const g = parseInt(hexcolor.substring(2, 4), 16);
    const b = parseInt(hexcolor.substring(4, 6), 16);

    // Fórmula estática de luminância YIQ (padrão WCAG)
    const yiq = ((r * 299) + (g * 587) + (b * 114)) / 1000;

    // Se a luminância for menor que 128, a cor é escura (retorna texto branco), caso contrário texto preto
    return (yiq < 128) ? '#FFFFFF' : '#000000';
}