## `sapmachine:17-alpine-3.23`

```console
$ docker pull sapmachine@sha256:49dfba09dfdc19a90e6c75d79ee2a091523534dd47646f1ff41db74d95c1d2eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:18443b4eec7c4cd91ecf449c922ba8af423ba703e338405865a020731b13e6a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208398506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c08b0553074ebb45d4cbcfacb942baf87e41b814515cbcfecb290e0a5861a02b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:08:24 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jdk=17.0.20.1-r0 # buildkit
# Thu, 20 Aug 2026 18:08:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jdk
# Thu, 20 Aug 2026 18:08:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ccb85b2d3af5d9803ad91590f40b364d9f9d8dbb5f9ebfec18c1926f0e6481`  
		Last Modified: Thu, 20 Aug 2026 18:08:43 GMT  
		Size: 204.6 MB (204554085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b194ffe12514bff547d740a98dbb331064671da027caf5dc142c0c2bd29cbc10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.6 KB (521608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61ddb755385ddb0a555b4fa06cce79062373bf8fe84e3d048daf56190a00751`

```dockerfile
```

-	Layers:
	-	`sha256:8a6490b9a8394260ca015644c9a3b84a3895dc978a414e2b1030e0165fe3c736`  
		Last Modified: Thu, 20 Aug 2026 18:08:39 GMT  
		Size: 512.7 KB (512683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d86cdd47544d15f4480b35541cd71458c07eaf4dd0abd8ca28770628eaf24ecd`  
		Last Modified: Thu, 20 Aug 2026 18:08:39 GMT  
		Size: 8.9 KB (8925 bytes)  
		MIME: application/vnd.in-toto+json
