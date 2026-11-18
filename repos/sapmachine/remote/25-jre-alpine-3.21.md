## `sapmachine:25-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:d837c2cbd7b88e9aed041a2024509527159879a3ca3be5b3af100c42ae0947df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:d43fd93195094ac9eb30ffa263147f0572a094df6585398f06bba9812011309f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63444366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b316caf81bdb14e4713db36ac8f37bba21d9282a0d647d2a5da9b47dcbebe65d`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:41:32 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5.1-r0 # buildkit
# Wed, 18 Nov 2026 16:41:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Wed, 18 Nov 2026 16:41:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d14698fe8627495d95cfc1c8492a7d3af78b7181853384415073fd9c978346`  
		Last Modified: Wed, 18 Nov 2026 16:41:45 GMT  
		Size: 59.8 MB (59818964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:501c536077374b66df03767e468b2dfc0fadc503ee6743076f55c3f08025fbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 KB (440377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fbea35e254011d551eb9f1d05231211dddf9dfd79cbf7eaedd0eb0b80eea6d2`

```dockerfile
```

-	Layers:
	-	`sha256:953828c5feeabf0f08931acc81e055dfa4147c15225888162964c3df95d4e301`  
		Last Modified: Wed, 18 Nov 2026 16:41:43 GMT  
		Size: 433.1 KB (433078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8926764e9ac24ad25fc5eb6588278d13439451dfcea0a290fdd2a0a6753b481e`  
		Last Modified: Wed, 18 Nov 2026 16:41:43 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.in-toto+json
