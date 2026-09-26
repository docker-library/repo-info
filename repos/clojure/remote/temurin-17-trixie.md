## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:b563696b9b15e6ea08c7a4f7305d448684a60d5068190b51603c8d400fd7975c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:00184942cbfb3387a6e8509f2096af9c2e46eee1124770c87f558ed066b6ec55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277772268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a712ff7591905556a7665cecb7293d4515f13082a4774e724140c54ec7117c6f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:22:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:22:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:22:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:22:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:22:11 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:22:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:22:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:25 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7493b70305aca5808d978b42b4698783d3fcbbbc3ee61ef01e9853be937b432`  
		Last Modified: Fri, 25 Sep 2026 23:22:46 GMT  
		Size: 145.8 MB (145824881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a27a88d420c11fea15ae3c7de752b4cf2dc5f86c0988520425206d702c8057e3`  
		Last Modified: Fri, 25 Sep 2026 23:22:45 GMT  
		Size: 82.6 MB (82566648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba3df1e191e7ae61e9589f6e0bbd8d94e385f2d42058376d5d6044d86443bcc`  
		Last Modified: Fri, 25 Sep 2026 23:22:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024ca20f04f175926981fdff3ae34d00735fed4e2f4f046b4be489c1f42c27a5`  
		Last Modified: Fri, 25 Sep 2026 23:22:42 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:58dd1f12af6905e2cc7c3b1ad83c9707edd44691ba646e462a32614a53cf10b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63865d42af018cab2a702b7570b9683703a6f3c88d8e888c4df4f306b76d673f`

```dockerfile
```

-	Layers:
	-	`sha256:d39112f017f5a0a4817c50cb606e3b4739cf61edbb75454cfd9f0a6dfcad9830`  
		Last Modified: Fri, 25 Sep 2026 23:22:43 GMT  
		Size: 7.5 MB (7478820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c6524f3f8dfe4b5ee1c14c07f25306054d7b97c5f5e93e3fe864279501d3969`  
		Last Modified: Fri, 25 Sep 2026 23:22:42 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cb1326c76cb292492120e282ee77a5209814d180e26f04493e320d9338632708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276787572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511d071d1a6b9c6d29d7f4ba4f72455c182eb8cac89b2c0b5bb0bd6620274fc7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:19:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:19:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:19:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:19:40 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:19:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:19:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:19:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:19:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:19:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccea8ee8d2e604ab032b65bec62593e157a2d441e4080bd77c3577e1db49158a`  
		Last Modified: Fri, 25 Sep 2026 23:20:21 GMT  
		Size: 144.6 MB (144648252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1652167da474b539a85852c6f77c1240f8d05e6f50e312a5b9bd82d55ed3f213`  
		Last Modified: Fri, 25 Sep 2026 23:20:20 GMT  
		Size: 82.4 MB (82389442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56479cbae71db05e4c05ac00bc99738dfeeae28f2ceb17602f92c560b75f0db9`  
		Last Modified: Fri, 25 Sep 2026 23:20:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde0a120e6881384fabefabf0fbb78c54301172c39504a463b1eb24a6acb68d5`  
		Last Modified: Fri, 25 Sep 2026 23:20:17 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ce2670596e2e41221a2c9953c795dc07478b8aeb09a782e1fc5a8b664fbba3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6750ea2be9374f3a6e90ee867202ab0a21e9fca6b67461e9f5eb7618b867eea`

```dockerfile
```

-	Layers:
	-	`sha256:2a6993237844c7b0f6043c03461ac264ac8b6526475bb7c1c93b84c919641cb7`  
		Last Modified: Fri, 25 Sep 2026 23:20:18 GMT  
		Size: 7.5 MB (7485213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3803a657ca143e97f5aecf69bb3f451bd8afc633d7f75da3ec111804d7fb8db`  
		Last Modified: Fri, 25 Sep 2026 23:20:17 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:fc75d115b9bcf4c28e606a1bfa6e8743fdb36937798bb08b57d09abbe0f22960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286857164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7b09b0fdbc92029622b997bc1775559bb2b063f6bd8f5936e83dd66afc936e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 04:35:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:35:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:35:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:35:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:35:33 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:48:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:48:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:48:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:48:40 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:48:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76aaed21f061d9dc3fe6991992dde80644a31fa030b3be0eb64a767c1c3cc559`  
		Last Modified: Sat, 26 Sep 2026 04:38:58 GMT  
		Size: 145.7 MB (145670574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348954dc40b1be188a2ab1b367fd53e808483a3207dfc4cdcef4916fb4418a48`  
		Last Modified: Sat, 26 Sep 2026 04:49:19 GMT  
		Size: 88.0 MB (87990473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20c6bad556f744f4a4b0ece4e29100e34963a472d08f5cd659eb97a3dbde45c`  
		Last Modified: Sat, 26 Sep 2026 04:49:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c790a263418349ce7ec4f80e340b085efa4bfa4aac23d83cd55cf6211da0a34f`  
		Last Modified: Sat, 26 Sep 2026 04:49:16 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2292fc1dc2925f81a547c8670ddd8f59a474bba9006962a99226ca395e064bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523fe359bbc132c21f3f43b45da25f00c08e434147cc4d3c89b9732e7c03f9ab`

```dockerfile
```

-	Layers:
	-	`sha256:65e2fe1290fe550ab420a1a9d9faf75a7421c930a3b168a4104516e6172ed332`  
		Last Modified: Sat, 26 Sep 2026 04:49:16 GMT  
		Size: 7.5 MB (7483239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a13f59d46b24b9e97b29cf21452c95f21ca65f6d27e232132a165088a6c0cb13`  
		Last Modified: Sat, 26 Sep 2026 04:49:16 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
