## `sapmachine:21-jdk-alpine-3.22`

```console
$ docker pull sapmachine@sha256:46d252108fccd43226f7c8d5525bb848f7552efe81a28abc1b21386ed6a0fada
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:886069b33e269e21b15c8daa7d2dd3c2e67b13a6efa6fbaefb0516485194f729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223600648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6135be1272dee3bc6aac2a735a3db0b793a9568ae60a452e9a0048218944b51e`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:42:29 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13.1-r0 # buildkit
# Wed, 18 Nov 2026 16:42:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Wed, 18 Nov 2026 16:42:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2731bc9b69f1d6f3bcafea6d0d98edfe726c0342707417f158007325bd4a09a0`  
		Last Modified: Wed, 18 Nov 2026 16:42:51 GMT  
		Size: 219.8 MB (219806273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:290e982ba985110ff5c11ab8d4553197923500bdd92fb61d13727bd3d53987a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.3 KB (520274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb5a0a9628fe64dc3d6e59e77c0291f8dfa726358fbd181d649040e641308cf`

```dockerfile
```

-	Layers:
	-	`sha256:17da1fbfb1d8f28075c923e62fdf36e598c61bd27a1cba00f603a06b638ac36c`  
		Last Modified: Wed, 18 Nov 2026 16:42:46 GMT  
		Size: 512.6 KB (512641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3502420cf02d10bf696dfc439c8b468acf094b24150c9088a1248579766344eb`  
		Last Modified: Wed, 18 Nov 2026 16:42:46 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.in-toto+json
