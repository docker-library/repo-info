## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:e3faac65b894d75b36670204a6d6b69bee5efc81e4d2dda5f1eded996614836e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:57164236211d0b6e7876a371a1d446486c7db1338d553483ae907f03058713fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253165682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a225610b55586926c49787e3dfd754582456f8eb1168d1482c5f770fa24b45`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:04:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:04:16 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:04:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:04:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:04:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:04:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:04:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe9f1c207e5e4454c507e84b5599a203a1f9a216c5cad18b09d3e6414f796ea`  
		Last Modified: Thu, 29 Oct 2026 20:04:52 GMT  
		Size: 158.4 MB (158409458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c40a506d358094c22ea62f6be141118349107055518249c2cf50aaf11d48eb`  
		Last Modified: Thu, 29 Oct 2026 20:04:51 GMT  
		Size: 66.5 MB (66507744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905fcca9b59cc7c11e39478f9f4861334584f01b2fcb76cc815196dc246dec24`  
		Last Modified: Thu, 29 Oct 2026 20:04:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f9594470893576a0c69132f62156019dd278978efde16d67b85de36c9f0497`  
		Last Modified: Thu, 29 Oct 2026 20:04:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6c400893b5107f6ab68759b1af1954e11a0098ef10ed660b59eb2a8987daf0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55ea68abdcec6225cb05d1dddc0c5dc4495f7d7220651e1113df30ae2b2a0737`

```dockerfile
```

-	Layers:
	-	`sha256:8df2315991c1ac9ea80b96b136ede866685d2a34ec7a0dc511b07ab4cb6116a1`  
		Last Modified: Thu, 29 Oct 2026 20:04:48 GMT  
		Size: 5.1 MB (5119885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5eb540587779e882ef7882dcade0cdf57464af6f83ce91bcc838598fe69afcf3`  
		Last Modified: Thu, 29 Oct 2026 20:04:48 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:35bad51e715e06cb673ebecdfca45815d34911dec5211c77e620790bfbd28d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251331360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dffec9be8646395087c21163f75d6270c6deafc9eabf25e43ce19d5a5a9c14`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:05:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:02 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:05:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:05:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218afaea3a891d92b02034350a238eabf5eaa461ff53e874a61d7a009cbe8fc6`  
		Last Modified: Thu, 29 Oct 2026 20:05:39 GMT  
		Size: 156.7 MB (156691644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8789c3f420a67564f9d91ca30f9a5391f61384cb1f5eead58d3475610ecd35`  
		Last Modified: Thu, 29 Oct 2026 20:05:38 GMT  
		Size: 66.5 MB (66500720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f605a5ef67223e8b1e29e31243af33c5c8cf1b7c1d564b6e4769f946b541b329`  
		Last Modified: Thu, 29 Oct 2026 20:05:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1386c8a082e5baeaaa023d052fe0dc2c506e15ed9c4c97bdb6d7a5e14be0c3a`  
		Last Modified: Thu, 29 Oct 2026 20:05:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bbae8343f7a48128e2f5c59560d8d84af6f0777fbde4a1a6b3b2e466d21f45a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78cac98d67bfef0b818867f627d318e21e4e591ee857d6ab16fc3e8cc98c317`

```dockerfile
```

-	Layers:
	-	`sha256:ce761bef3c27626d715844cbaeed366b9259bd23d1ca15933b76e37e2a58f848`  
		Last Modified: Thu, 29 Oct 2026 20:05:35 GMT  
		Size: 5.1 MB (5125646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cad4b465f5d639e05082bea7afde3775110f70781568426a8ba27f6f44d4a205`  
		Last Modified: Thu, 29 Oct 2026 20:05:35 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b3b578904a788dae59e92f6c15d9f35d31ccb7aab0babd88d4489db07b83a357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (262000745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00dfdae3c075e14b6af799baee75e46336f08c7c748ce272e93789a9553c1cd9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 19:33:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:33:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:33:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:33:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 19:33:19 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:44:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 19:44:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 19:44:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:44:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:44:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6762e34942ae5aad8598700bf20d6ad9a3ad7d4fa664b90fb8574adff622c7c`  
		Last Modified: Thu, 29 Oct 2026 19:37:38 GMT  
		Size: 157.6 MB (157573298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f211afe67c74fe6a0483abca93054fcedcd8d717e098987aa2ac89070204a2`  
		Last Modified: Thu, 29 Oct 2026 19:45:16 GMT  
		Size: 72.3 MB (72333562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1abf198cd45b09ef6b2e72d8d1121abfa0ef37b7873f5f2175650885b2fb181`  
		Last Modified: Thu, 29 Oct 2026 19:45:14 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43b51a514e894955dd8269a2a93b302b7b6f04f5347b768863850599e994aefb`  
		Last Modified: Thu, 29 Oct 2026 19:45:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8020097c1b28f1d180fdca9103e92ec266119c8d08fddcf332cd0408774fd53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65868ae92891beca805d6de36762b5cd83c699cf699930d26e72afd9e808b702`

```dockerfile
```

-	Layers:
	-	`sha256:62e4f2445fbc7b89a5721797b57627294b04ba784ccec620e10cbcadd05df938`  
		Last Modified: Thu, 29 Oct 2026 19:45:15 GMT  
		Size: 5.1 MB (5123797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5567e1e6ed9152a46247a032589a0fd4b6a00745c170ba3348806ac4993fee40`  
		Last Modified: Thu, 29 Oct 2026 19:45:14 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
