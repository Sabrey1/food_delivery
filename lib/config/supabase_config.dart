import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static Future<void> initialize() async {
    await Supabase.initialize(
      url: 'https://soufpeyxbjmfuugorrvh.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvdWZwZXl4YmptZnV1Z29ycnZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzg1NjI3MjgsImV4cCI6MjA5NDEzODcyOH0.b-eVy9WBMfZmPYJaLLnsuKud8f-nHCdztUegAjwY5y4',
    );
  }

  static SupabaseClient get client => Supabase.instance.client;
}