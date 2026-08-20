## `sapmachine:17-alpine-3.21`

```console
$ docker pull sapmachine@sha256:302803b0399a945c6d8774b6c18620fc5581bd9ba2bf5e25103e453ce5a87c79
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:8fa257e965f32529f0169a8bf1125f9fd37d516e9d6dec8aaa6ad03d595c87a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.6 MB (207649163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96439358d396e6fc75c6a6f3269b945b4485566358bedc2da2d115230de3128d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:08:42 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jdk=17.0.20.1-r0 # buildkit
# Thu, 20 Aug 2026 18:08:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jdk
# Thu, 20 Aug 2026 18:08:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b569c284f04be45954e3e4a05028dddbd8c13e3d9881c320f9daee8b2307792`  
		Last Modified: Thu, 20 Aug 2026 18:09:02 GMT  
		Size: 204.0 MB (204002288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1cd97acb5cf7f91f57f2d0db6c9146712687c812277c8d654cf36f990533e0d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.8 KB (521791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a498426e658b34736c1741f26bca02c55a8e74806d8b585ea4769ac527c3df0`

```dockerfile
```

-	Layers:
	-	`sha256:5e145c2231a8b353508dbdaf1e954ac2164610c5c54b3fa9cad731b3a7c807f5`  
		Last Modified: Thu, 20 Aug 2026 18:08:57 GMT  
		Size: 514.2 KB (514160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8feb5658840bd8ef7fe41ba60e93ea0569cfedf844dfe7f8876e24e915dd70ee`  
		Last Modified: Thu, 20 Aug 2026 18:08:57 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.in-toto+json
