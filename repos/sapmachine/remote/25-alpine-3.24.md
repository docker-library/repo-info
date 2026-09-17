## `sapmachine:25-alpine-3.24`

```console
$ docker pull sapmachine@sha256:9eadf528a617ea356dd1f82a7a71e23563df9fbd19018bb2e80ba0354d0d2e8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:edb53d495363c9bb4ddafabf2e0c8df0d1772b9fb422c959a82dfb15f833e283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229322537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4454cfd9676ff80881ae79de9e948a0658da29ff80f4ab12bd5a6728b0b1673b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:36:36 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.4.1-r0 # buildkit
# Wed, 16 Sep 2026 16:36:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Wed, 16 Sep 2026 16:36:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639d04c3456b8f8137ac60779e0df56ed7c6eb9e71e6c7cfadcee18bfc0d0102`  
		Last Modified: Wed, 16 Sep 2026 16:36:57 GMT  
		Size: 225.5 MB (225476146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:efd582d9a55eff6b52991fb4f4d0e8c084d687f8d38c3e30b5b539f49482a119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.9 KB (510939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5544538266ffda3fb19e81ce4619d56529f0f9859e1c26b070757c2526c34a6`

```dockerfile
```

-	Layers:
	-	`sha256:ef20285c0682efc15e6fbfce439eb5188a42be4fe6a812849594fe79fe04968a`  
		Last Modified: Wed, 16 Sep 2026 16:36:53 GMT  
		Size: 502.7 KB (502656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a61111549998747b50f87901a94da602b9ec50905e798ca1a6189f1289c59f2`  
		Last Modified: Wed, 16 Sep 2026 16:36:53 GMT  
		Size: 8.3 KB (8283 bytes)  
		MIME: application/vnd.in-toto+json
