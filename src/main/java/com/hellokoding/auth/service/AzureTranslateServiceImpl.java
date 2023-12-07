package com.hellokoding.auth.service;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import okhttp3.*;
import org.springframework.stereotype.Service;

import java.io.IOException;

/**
 * Microsoft Translator Service Implement
 */
@Service
public class AzureTranslateServiceImpl implements AzureTranslateService {

    String microsoftBingAPIKey = "6380c68dff384955ae2ca406e989867a";
    String crunchifyTranslatorURL = "https://api.cognitive.microsofttranslator.com/translate?api-version=3.0&to=zh-Hans";

    private OkHttpClient crunchifyClient = new OkHttpClient();

    @Override
    public String translate(String text) {
        if (StringUtils.isEmpty(text)) {
            return "";
        }
        try {
            return crunchifyMakePostCall(text);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // This function performs a simple POST call to Microsoft Translator Text Endpoint.
    public String crunchifyMakePostCall(String content) throws IOException {
        // An RFC 2045 Media Type, appropriate to describe the content type of an HTTP request or response body.
        MediaType crunchifyMT = MediaType.parse("application/json");
        RequestBody crunchifyBody = RequestBody.create(crunchifyMT,
                "[{\n\t\"Text\": \"" + content + "\"\n}]");
        // An HTTP request. Instances of this class are immutable if their body is null or itself immutable.
        Request crunchifyRequest = new Request.Builder().url(crunchifyTranslatorURL).post(crunchifyBody)
                .addHeader("Ocp-Apim-Subscription-Key", microsoftBingAPIKey).addHeader("Content-type", "application/json").build();
        // An HTTP response. Instances of this class are not immutable: the response body is a one-shot value that may be consumed only once and then closed.
        // All other properties are immutable.
        Response crunchifyResponse = crunchifyClient.newCall(crunchifyRequest).execute();
        String crunchifyResult = crunchifyResponse.body().string();
        return crunchifyResult;
    }
    // This function beautify the json response which we get from Translator API endpoint
    public static String crunchifyPrettyJSONUtility(String json_text) {
        // A parser to parse Json into a parse tree of JsonElements
        JsonParser crunchifyParser = new JsonParser();
        // A class representing an element of Json. It could either be a JsonObject, a JsonArray, a JsonPrimitive or a JsonNull.
        JsonElement crunchifyJson = crunchifyParser.parse(json_text);
        // This is the main class for using Gson. Gson is typically used by first constructing a Gson instance and then invoking toJson(Object) or
        // fromJson(String, Class) methods on it. Gson instances are Thread-safe so you can reuse them freely across multiple threads.
        Gson crunchifyGson = new GsonBuilder().setPrettyPrinting().create();
        // return simple JSON. Converts a tree of JsonElements into its equivalent JSON representation.
        String beautifyResponse = crunchifyGson.toJson(crunchifyJson);
        return "Output Data ======> \n" + beautifyResponse;
    }

    // Simple Log Utility
    private static void log(String crunchifyPrettyJSONUtility) {
        System.out.println(crunchifyPrettyJSONUtility);
    }
}
