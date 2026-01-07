# Create Post Screen - Modern UI Implementation

## Overview
A premium, modern "Create Post" screen for Velora social platform with custom media gallery, inspired by Instagram but with a unique, elevated aesthetic.

## Features

### 🎨 Visual Design
- **Clean, minimal interface** with soft neutral backgrounds
- **Rounded corners** (12-20px) throughout
- **Smooth shadows** without harsh borders
- **Gradient accents** for primary actions
- **Modern typography** with clear hierarchy
- **Premium social app feel** - NOT default OS UI

### 📱 Layout Components

#### 1. Top AppBar
- **Left**: Close (X) icon to dismiss screen
- **Center**: "Create Post" title
- **Right**: "Next" button with subtle gradient (emerald to seafoam)
- Minimal, elevated design with soft shadow

#### 2. Hero Preview Card
- Large preview card with rounded corners (20px)
- Support for **multiple images** with horizontal swipe
- Page indicators showing current image
- Image counter badge (e.g., "1/5")
- Remove button for each image
- Soft shadow for elevated feel

#### 3. Caption Input Section
- Floating label animation
- Soft background (mist color)
- **Character counter** (max 2000)
- Focus border with brand color
- Multi-line text input
- Smooth focus transitions

#### 4. Post Tag Chips
Four tag options with custom styling:
- 🎯 **Campaign** (Seafoam)
- ❤️ **Donation** (Coral)
- 🔄 **Update** (Blue)
- 📢 **Announcement** (Indigo)

Features:
- Animated selection states
- Custom icons for each tag
- Micro-interactions on tap
- Single selection mode

#### 5. Custom Media Gallery
- **Staggered/masonry grid layout** (NOT default Instagram grid)
- 3-column responsive grid
- Rounded image thumbnails (12px)
- **Selection badges** with numbered order
- Smooth scale animations on tap
- Gradient selection indicators
- Support for up to 10 images

#### 6. Contextual Toolbar (Bottom)
Three action buttons:
- 📍 **Location** - Add location to post
- 🔗 **Link** - Add external link
- 🎯 **Campaign** - Link to campaign

## File Structure

```
lib/features/post/presentation/
├── screens/
│   └── create_post_screen.dart          # Main screen
├── widgets/
│   ├── create_post_app_bar.dart         # Custom app bar
│   ├── media_preview_carousel.dart      # Image carousel
│   ├── caption_input_section.dart       # Caption input
│   ├── post_tag_chips.dart              # Tag selection chips
│   ├── custom_media_gallery.dart        # Media gallery grid
│   └── contextual_toolbar.dart          # Bottom toolbar
└── post_presentation.dart               # Barrel export
```

## Usage

### Basic Usage

```dart
import 'package:velora/features/post/presentation/post_presentation.dart';

// Navigate to create post screen
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => const CreatePostScreen(),
  ),
);
```

### With BLoC Integration

```dart
BlocProvider(
  create: (context) => PostBloc(
    createPostUseCase: getIt<CreatePost>(),
  ),
  child: const CreatePostScreen(),
);
```

## Design Principles

### 1. Content-First Approach
- Large, prominent media preview
- Clear visual hierarchy
- Minimal distractions

### 2. Smooth Interactions
- Scale animations on tap
- Smooth transitions between states
- Micro-interactions for feedback
- Fade-in entrance animation

### 3. Premium Feel
- Custom gradients for CTAs
- Elevated surfaces with shadows
- Rounded corners everywhere
- Soft, neutral color palette

### 4. Creator-Friendly
- Clear character counter
- Easy media selection/removal
- Quick tag selection
- Contextual actions at bottom

## Color Scheme

### Primary Colors
- **Brand Emerald**: `#1F6F5C` - Main actions
- **Brand Seafoam**: `#4CC4A7` - Accents, highlights
- **Brand Coral**: `#FF8A63` - Donation tag
- **Brand Blue**: `#4AA3F2` - Update tag
- **Brand Indigo**: `#415371` - Announcement tag

### Neutral Colors
- **Mist**: `#F5F7FA` - Background, input backgrounds
- **Slate**: `#5A6B7B` - Secondary text
- **Deep Navy**: `#0C1826` - Primary text
- **White**: `#FFFFFF` - Cards, surfaces

## Animations

### Entrance Animation
- 300ms fade-in when screen opens
- Smooth, professional entrance

### Micro-interactions
- **Scale down to 0.95** on tap (chips)
- **Scale down to 0.92** on tap (thumbnails)
- 150-200ms duration
- EaseInOut curve

### State Transitions
- Opacity changes for enabled/disabled states
- Smooth color transitions (200ms)
- Border animations on focus

## Media Selection

### Gallery Implementation
- Uses `image_picker` package
- Multi-image selection support
- Maximum 10 images per post
- Auto-loads gallery on screen open
- Graceful error handling

### Selection Features
- **Numbered badges** show selection order
- Gradient overlay on selected images
- Border highlight (3px seafoam)
- Glow shadow effect
- Easy deselection by tapping again

## Best Practices

### Performance
- Optimized image loading
- Efficient widget rebuilds
- Proper disposal of controllers
- Animation controller cleanup

### UX
- Clear feedback for all actions
- Disabled states are visually distinct
- Character limit warnings
- Loading states for async operations

### Accessibility
- Semantic labels for actions
- Touch targets ≥ 44x44 pts
- Clear visual feedback
- Readable text contrast

## Future Enhancements

### Planned Features
- [ ] Video support
- [ ] Image filters/editing
- [ ] Multiple caption drafts
- [ ] Schedule post publishing
- [ ] Location picker integration
- [ ] Campaign selector modal
- [ ] Link preview cards
- [ ] Image reordering (drag & drop)
- [ ] Gallery infinite scroll
- [ ] Image cropping
- [ ] Alt text for images

### Possible Improvements
- Animated page transitions
- Haptic feedback
- Pull-to-refresh gallery
- Grid/List view toggle
- Recent images section
- Camera integration
- Stories-style preview

## Dependencies

```yaml
dependencies:
  flutter_bloc: ^8.1.6
  image_picker: ^1.1.2
  google_fonts: ^6.2.1
```

## Testing

### Widget Tests
- Test media selection flow
- Test caption validation
- Test tag selection
- Test character counter

### Integration Tests
- Full create post flow
- Gallery loading
- Image upload simulation
- Error states

## Contributing

When modifying this UI:
1. Maintain visual consistency with brand colors
2. Keep animations smooth (200-300ms)
3. Test on multiple screen sizes
4. Ensure accessibility standards
5. Update documentation

## Notes

- **NO default system image picker UI** - custom gallery only
- **NO Instagram-style grid** - uses staggered/masonry layout
- Designed for **iOS/Android neutral** appearance
- Built with **Material 3** design system
- **Premium quality** - Dribbble/Behance level presentation

## License

Part of Velora social platform - VitoTechLab
