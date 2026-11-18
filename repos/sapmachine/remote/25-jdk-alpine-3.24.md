## `sapmachine:25-jdk-alpine-3.24`

```console
$ docker pull sapmachine@sha256:2c03705312e778716779a896333f42d5851780bd26b2739d9b2786a11870ff11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jdk-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:d2148b10f17b8012f9d7a14e016ad212fba035c011321ba54145505e3c23a00e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142314313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58dda8fc6bfad010900754ffbca75e198561ab82c5d7eeaa8b83a26b74af251d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:41:17 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.1-r0 # buildkit
# Wed, 18 Nov 2026 16:41:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Wed, 18 Nov 2026 16:41:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee49310ceedef4d447feee2b69fc479d0b9f9092c41562d1f5c27cda98ef2e30`  
		Last Modified: Wed, 18 Nov 2026 16:41:33 GMT  
		Size: 138.5 MB (138460640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1d35b2fe2f6f5e485df69e4b9b6ae025976b290870ae3476495fb0a1f5d3800f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.8 KB (465751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244158d092e6b7b7f4633be88b1bb712e8722f860ff4312d36b22dc297742c06`

```dockerfile
```

-	Layers:
	-	`sha256:e1a11c07139719927f5e376a3650a22599379080bea6010e424b14882d72108a`  
		Last Modified: Wed, 18 Nov 2026 16:41:30 GMT  
		Size: 457.5 KB (457467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d6289cbcca1544eb4e2d3246702dedf8dd63a468aa7cc4769d40398875d861d`  
		Last Modified: Wed, 18 Nov 2026 16:41:30 GMT  
		Size: 8.3 KB (8284 bytes)  
		MIME: application/vnd.in-toto+json
