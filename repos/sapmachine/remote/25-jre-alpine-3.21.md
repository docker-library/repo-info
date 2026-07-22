## `sapmachine:25-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:d813e24eceada1d6cb2ae7530390479c7054b8f43584afd4ba256f561d18c752
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:7172ddf4efde0cf99f3d9d986024ace730ce81a0a18a3c1aa30c8d3d9a45bcfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63415472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da8a51f8dc0cb2b7cc079fcd112c35bd24bdcdba324b42930e3dc6615189b4a`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:24:31 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.4-r0 # buildkit
# Wed, 22 Jul 2026 18:24:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Wed, 22 Jul 2026 18:24:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16bf4f39e052862fbd181e81fe22fe1720f2d5b9f5b61842d5b8a20685ac79f1`  
		Last Modified: Wed, 22 Jul 2026 18:24:44 GMT  
		Size: 59.8 MB (59768597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cf6913406bbc000c93723828f85a3c1d42d99d3f3cbad9290b3f0b889973a643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 KB (440344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363daf9bbb01d49c6dec231ad3ea70d8ffe00846b3c550f85f25ba765280edcd`

```dockerfile
```

-	Layers:
	-	`sha256:00f0fb668f4fd91aae48486c9e710873d1eb5721741ea951475e85f8e198a0a6`  
		Last Modified: Wed, 22 Jul 2026 18:24:42 GMT  
		Size: 433.1 KB (433056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08ab3620556c7dcfc0d084ab10e41121adefe493e3f280e53c2dded6086f56c3`  
		Last Modified: Wed, 22 Jul 2026 18:24:42 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json
