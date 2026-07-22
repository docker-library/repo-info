## `sapmachine:17-alpine-3.21`

```console
$ docker pull sapmachine@sha256:24106527311315100d39314ef296d7678617666e852c43995626106f4b134133
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:2ce292adb8d2944da77d19e3333ab5aec112bc130dff66b1dc2b7d8ad3af9240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.6 MB (207647997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25ff942c679acb776254626112952ebac26c74ae1d7342482d084e0b14cabe15`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:26:22 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jdk=17.0.20-r0 # buildkit
# Wed, 22 Jul 2026 18:26:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jdk
# Wed, 22 Jul 2026 18:26:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68c90a0db5e1c5f32f55a189a95df3e4383f453b29d7ee66f64432a275a28ed`  
		Last Modified: Wed, 22 Jul 2026 18:26:42 GMT  
		Size: 204.0 MB (204001122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:60e4ad7915222329c150582b7f399020c8c3a4cc68c56b8f8555e2bf51fbd4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.8 KB (521767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49990d38cdc7f3e9db1dcd310a7d355d8d2308aeb5a56f0888dc189b93893790`

```dockerfile
```

-	Layers:
	-	`sha256:28cc649669245941dae686bd095a9498f0e34682443c79e88c5de1dd9654bac8`  
		Last Modified: Wed, 22 Jul 2026 18:26:37 GMT  
		Size: 514.1 KB (514144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d265c7721fdc65e10b1fb66f58a13215708c99d7a06dfcbf8c60daba9952c6c`  
		Last Modified: Wed, 22 Jul 2026 18:26:37 GMT  
		Size: 7.6 KB (7623 bytes)  
		MIME: application/vnd.in-toto+json
