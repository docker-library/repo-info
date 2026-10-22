## `sapmachine:21-jdk-alpine-3.24`

```console
$ docker pull sapmachine@sha256:3fd66dac676146927792c063ccfc981ed671b7cdb249003e4b464785500e44fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jdk-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:dabb2eee2f2f72aefb101116060039dfcc0e43489c28b97efd673e1c21122886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.2 MB (224208664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e741362d80aceea62585fb9ee6563941581d98c0153b80e13cde56d5b029a4`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:04:34 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13-r0 # buildkit
# Wed, 21 Oct 2026 23:04:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Wed, 21 Oct 2026 23:04:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9001a90bbc1c18010ac7be3576da3314177d4fe1f6e17c7b00901aec90399ca`  
		Last Modified: Wed, 21 Oct 2026 23:04:56 GMT  
		Size: 220.4 MB (220355555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b033aa09549a561d1b662d96388c9e7e7882bfa17e08070a6ba6cfe9eb3ca6a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.0 KB (520963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67bf2917425cadd7f84daebfb2f7d805199bd013f211657bbc0d5f08eea8bae`

```dockerfile
```

-	Layers:
	-	`sha256:28b18803d5c5dd2dbbd9c0db37e660d36006665fcf3ba37d8a6559d06ca2717e`  
		Last Modified: Wed, 21 Oct 2026 23:04:52 GMT  
		Size: 513.3 KB (513340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:697bb126dc963854197e45f139246b67814076289e16f3c24f85ae15d3ceccb2`  
		Last Modified: Wed, 21 Oct 2026 23:04:52 GMT  
		Size: 7.6 KB (7623 bytes)  
		MIME: application/vnd.in-toto+json
