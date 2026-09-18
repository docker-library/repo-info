## `sapmachine:27-jdk-alpine`

```console
$ docker pull sapmachine@sha256:f303c5a4a39d70663dad58677292d9062bf45c206418d5cb2d080b9938927d45
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jdk-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:054a1f21fa32fb0917bb50681e6071a4df821730926b2946b88609b9e5e87617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143236567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b56e83291d39c75b206fe758af8f79a6782348c515efeb33f88ee7ee3c4c07`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:56:20 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27-r0 # buildkit
# Thu, 17 Sep 2026 21:56:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Thu, 17 Sep 2026 21:56:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dc069251baee3340460591af0570858626f2899071ba0d03292bb72097452a`  
		Last Modified: Thu, 17 Sep 2026 21:56:38 GMT  
		Size: 139.4 MB (139388060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b15520f77dda545f4200c3133a4e4aab185e49daae5117217a679b5bae3b0ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.5 KB (463546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95750f0a63ad90181988dfddd5b495c7c14ef861789b99b081ed6d2b323c0f27`

```dockerfile
```

-	Layers:
	-	`sha256:9ffc00ee807a884842a212dc5d9cf9b2357638789c8ef7499e0854066843069c`  
		Last Modified: Thu, 17 Sep 2026 21:56:34 GMT  
		Size: 454.7 KB (454716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d65ec31250bec311d87e2903a728bd539cfc412205419f777a3b6e7abdabeb78`  
		Last Modified: Thu, 17 Sep 2026 21:56:34 GMT  
		Size: 8.8 KB (8830 bytes)  
		MIME: application/vnd.in-toto+json
