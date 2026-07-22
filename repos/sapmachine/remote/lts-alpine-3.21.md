## `sapmachine:lts-alpine-3.21`

```console
$ docker pull sapmachine@sha256:6468a9a179e57568d51d78148e67d3bdec172a035da3063b9582d45c3da8712e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:b0adf4d0c871e4c21f5fc52c6e67503dde449e1fbce4daceb353718b9f158fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.4 MB (228410513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990b753caaca3f53ab8cd9e2ca1535d48010baa6e22476811896e35af2eac82e`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:24:34 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.4-r0 # buildkit
# Wed, 22 Jul 2026 18:24:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Wed, 22 Jul 2026 18:24:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7acfa3e64404f9e1cc1cc429c75e74c0cedba3762f4c923393023aecdfe47517`  
		Last Modified: Wed, 22 Jul 2026 18:24:56 GMT  
		Size: 224.8 MB (224763638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4405d4faf7d029e2fb71ad53e179334da8516dcf14959322cd317851b867fc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **513.6 KB (513612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7470dc6deccf6cfb419181c81211a06e5ffd685c29f8f84e9e6535119d090fe2`

```dockerfile
```

-	Layers:
	-	`sha256:dc04fecb2174bd048e9eab71138589b03170eff88190afa517d203eec68f90ff`  
		Last Modified: Wed, 22 Jul 2026 18:24:51 GMT  
		Size: 505.3 KB (505342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:341ee0143d699e03e3e1d796de33c1db5b0ade0c3d16f17bcf8a5c89be63a166`  
		Last Modified: Wed, 22 Jul 2026 18:24:51 GMT  
		Size: 8.3 KB (8270 bytes)  
		MIME: application/vnd.in-toto+json
