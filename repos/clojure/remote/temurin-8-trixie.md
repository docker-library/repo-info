## `clojure:temurin-8-trixie`

```console
$ docker pull clojure@sha256:facfcd6c97bb8b7baf36a15d2b9e6b865807bb4be3aba14d0fc76b4001f79401
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:775ddcfb9ca999aa793852ffc428c1ca8d5b5c66e039f40ef2a0118b98af2e76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187156399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a79d473b412e83ed13c1feea377cb65a72613d59c3ec36bcf8d1c1c1f042a1`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:46:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:46:00 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:46:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:46:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205e9c9f974ef80ad2bded2defebc5bf3d115445216ef21e7357b88ce6d6f8b3`  
		Last Modified: Tue, 27 Oct 2026 00:46:38 GMT  
		Size: 55.2 MB (55192247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f245baf5c6f9df6b1a032026a1252e135768da707b9c13d73941c70578d68dc8`  
		Last Modified: Tue, 27 Oct 2026 00:46:38 GMT  
		Size: 82.6 MB (82569885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ece77abbf2b9312f77e6238a2f846dcdbeecdd8e1b9db1a7aafda07c0ce356`  
		Last Modified: Tue, 27 Oct 2026 00:46:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1e0b9b62df72ca096b9545a7b88f6446ff042f0543e3063b1d2788a1478e9d96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7611445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569e463e31a1999efaf20deff5e1f4b9ccf3b9c3970711e2cda15eb831f0687f`

```dockerfile
```

-	Layers:
	-	`sha256:4b51ae970e54a22c9263855c572cd964268dbbebf0e0a68ccf829945e1e620b3`  
		Last Modified: Tue, 27 Oct 2026 00:46:35 GMT  
		Size: 7.6 MB (7597121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67b0424bc2c02a6081695f48007d636a252be2592c081ec41aeeab71152db37e`  
		Last Modified: Tue, 27 Oct 2026 00:46:35 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8ee8d8a293eb5b1d804e43e22baef6ba89e20fae473d18d6d06fa8e986c6f523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186409273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250e9aaa71f0255a07479d34219e2f80e1d2c5f7569e7fcd1f6d054d7d06c38b`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:45:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:45:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:45:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:45:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:45:50 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:46:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:46:08 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36b102f6ef74b97f394cb3467cefab0f45f1b8eb66d984eaf64c94ef4ee1301`  
		Last Modified: Tue, 27 Oct 2026 00:46:28 GMT  
		Size: 54.3 MB (54254290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f342896795ad120421a806cc3a2cf97b735e198967fab0d63357e5dc9487576`  
		Last Modified: Tue, 27 Oct 2026 00:46:28 GMT  
		Size: 82.4 MB (82392735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20217e448dfcc22264929962322bbf5975fb62e1f2dd8afe2318d6ba418913e2`  
		Last Modified: Tue, 27 Oct 2026 00:46:25 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:aaef18ea02f4c4684dfa5703c53312cba10b5f6d062849c1694760a9ea9e0273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c574852cf236ec9c18866e9b23b3e7154c477576ed31273c92719ce62f6d57`

```dockerfile
```

-	Layers:
	-	`sha256:13422f165499f35aeb64cc9a86ee2398837d2a03c3b6d381d3f5ca7cb8bc4bf8`  
		Last Modified: Tue, 27 Oct 2026 00:46:26 GMT  
		Size: 7.6 MB (7604214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d52e660b28155d615cdc5967f4711821e6a5756b8a12c117b7918fafb006a0d`  
		Last Modified: Tue, 27 Oct 2026 00:46:25 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:28470080cb27fec03da1fed8db42a4eb8a00f668d6c55bba3c16837e002b73ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193872626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2b3ee1a5d0ac910527404f5f539ac1e8faa24c4f0fbd309c53141b889911ed`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 09:53:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:53:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:53:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:53:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:53:52 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:54:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 09:55:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 09:55:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b4f57d19c91cd2be6fc6bca93c05d753c91643eb4abc5c6ed73c78d398e6a5`  
		Last Modified: Wed, 21 Oct 2026 09:55:56 GMT  
		Size: 52.7 MB (52667105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d162441e21832398cdd13fb2bb6e193344c810af1b9a585004e22476ef8f7a4`  
		Last Modified: Wed, 21 Oct 2026 09:55:57 GMT  
		Size: 88.0 MB (87997297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7c2a82e37c119958cda53bdb9cdb0ed25c983a6fdb78868d6d951ec9878930`  
		Last Modified: Wed, 21 Oct 2026 09:55:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d7a1897acdaca0f6c0389927803289d8872f9a1d786100550b6312ff7390d34a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7617283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6c1991d2ee4b0fdb66353fcb00e3e34a9db03098e5b05276b2225ad57c98cf`

```dockerfile
```

-	Layers:
	-	`sha256:a87a9150542c835c68af7e37398a67ba585577cfae19d05590d053a87a4d0952`  
		Last Modified: Wed, 21 Oct 2026 09:55:54 GMT  
		Size: 7.6 MB (7602911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86751ea0b70e5218dc8f6b255c1e5acb46a37101d6a0bba0a65f736d42eb98b8`  
		Last Modified: Wed, 21 Oct 2026 09:55:53 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
