## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:47fb5f8526ecb8cba05994b82c4eaba983003f7b8eda53ec16da9dfa0414c529
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; amd64

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:9ae2373ce730bf00e904760bb77d15dc614f694499b4efb4c8bae4d6b868bb84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286860757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86e397b4e13edcf7ae5d754ae0c07437e50b42f93e2b7343b550ca965c722db7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:54:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:54:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:54:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:54:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:54:31 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:01:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:01:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:01:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:01:22 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:01:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7661c2a8ca6104e076fccf72408bfd48135a2ca63700fd0c23a220367cd034e`  
		Last Modified: Sat, 19 Sep 2026 07:58:05 GMT  
		Size: 145.7 MB (145674257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06cd909cb175690b7f39760ab5abe935782970638ea01582eb9d3218975832e`  
		Last Modified: Sat, 19 Sep 2026 08:02:04 GMT  
		Size: 88.0 MB (87990383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8bbee2f082dc0ddd13a23887ee9004f63362465f168e52e96d737b4a75ed40`  
		Last Modified: Sat, 19 Sep 2026 08:02:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f684f62e3fc8a94f91cfed635dd28159ff1771e845810ee790dabe81eb8f84b3`  
		Last Modified: Sat, 19 Sep 2026 08:02:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:142838f9dcfabf223994cf7307ab37d92e56ce9d250e292a3bf557fa46fd0501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7610910c71dadd31d29b89e64194d0d33f35c89a1b6c6c1b03fde3ffb724c23`

```dockerfile
```

-	Layers:
	-	`sha256:12603e5e90096ef4ea8e040926cd61390a2b5f137874ce99f188b2ab2b0c1e21`  
		Last Modified: Sat, 19 Sep 2026 08:02:02 GMT  
		Size: 7.5 MB (7483231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a663e2dca19aa863fa7c6dfde84f158b1e9991c7bb1a3fd0f2d2c8fb609b8a0b`  
		Last Modified: Sat, 19 Sep 2026 08:02:02 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
