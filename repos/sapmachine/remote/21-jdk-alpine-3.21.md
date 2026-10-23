## `sapmachine:21-jdk-alpine-3.21`

```console
$ docker pull sapmachine@sha256:ec278ad47c7d395e8d37a77efccf27fbfd248fa87caedddcfec928c10f9ac295
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:c676678074d1127a531e94f75407e7442e654698e446f57b5b934280801681e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.3 MB (223276084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f4cab83a559a5e462b27026b2f98fec79d894d366b13c8203a5b0df72cfa72`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:57:54 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:57:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Fri, 23 Oct 2026 16:57:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:749d1107608c4ad14c3f22c170cedf78b66326d3904e6a4f7b1a169916d05fc1`  
		Last Modified: Fri, 23 Oct 2026 16:58:15 GMT  
		Size: 219.7 MB (219650689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8a0da8e4a818cdcd0c9128c32201572d0718d22c31d81742e33cb534d08bb62d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.7 KB (523721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:268de919b58474859b2032203c59591a2f2540bb6fdbdfc135be644a0153b0c3`

```dockerfile
```

-	Layers:
	-	`sha256:6574075daba6ca78a96a50cac29f0c8facf8e93c39a00735384199f6e34abe25`  
		Last Modified: Fri, 23 Oct 2026 16:58:11 GMT  
		Size: 516.1 KB (516074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7716d572acc96c2ead9e472cb2454435e6a81834e872f8c0572922c5faefa104`  
		Last Modified: Fri, 23 Oct 2026 16:58:11 GMT  
		Size: 7.6 KB (7647 bytes)  
		MIME: application/vnd.in-toto+json
