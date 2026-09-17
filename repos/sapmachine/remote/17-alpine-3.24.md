## `sapmachine:17-alpine-3.24`

```console
$ docker pull sapmachine@sha256:f5c0c61c20cc2ba02fa0bd152a1cdbaf2e911c556bddeb65d3921ba03de991c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:1cd65de55ac48e51cacc17e033097b951a985aa8badbacac8d900536ba092c36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208566450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b769864e77abf5ea85493b170ac50786a51015fbb1f07dddd796302bca7a05a8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:36:52 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jdk=17.0.20.1-r0 # buildkit
# Wed, 16 Sep 2026 16:36:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jdk
# Wed, 16 Sep 2026 16:36:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41206302c690dedc50635c1a6fff404702e6a7480d37c2e8f40751793683355`  
		Last Modified: Wed, 16 Sep 2026 16:37:13 GMT  
		Size: 204.7 MB (204720059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d9a8de65f94005600b82e5e4ce043a92c18808c66196405479570a7be34c9d6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **519.1 KB (519091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044c2da57180bc8e44e61de98aa4d504f51c7dfb4dc426d51a8d5a21dcbb5a72`

```dockerfile
```

-	Layers:
	-	`sha256:8b3e6d84cfc01ecfb1fe4479ab5df2b3368f9a5a8ea6f9fa338db1bd66cc904b`  
		Last Modified: Wed, 16 Sep 2026 16:37:09 GMT  
		Size: 511.5 KB (511458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6e381b2683351a4f3e6527e2e9eda6a293e7f6ac3474a34aa2d9f9682380407`  
		Last Modified: Wed, 16 Sep 2026 16:37:09 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.in-toto+json
