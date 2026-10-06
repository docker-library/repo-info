## `clojure:temurin-8-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:3eeed03e4dff700533689f077632d43369560628bb6af5e75808c3347c36958a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:75144d1c8b082970899759ac1942c3d5baaaa7180b94f2cb2f93c7d88319325e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (154027495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58d931b4d7ba963ebe17bcee9a9208f4dd3d4f7cf4cb433e9db6637486cf5d6d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:10:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:10:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:10:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:10:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:10:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:10:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:10:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:10:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8254215ea7c871cc636622f81e05d27e65ecf6c5fba9fb906ee36887d82746f`  
		Last Modified: Tue, 06 Oct 2026 02:11:16 GMT  
		Size: 55.2 MB (55192264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cad39511cbad895053cfaeeb969dbbd1d4a2059c1cdd5e3bb4928fa3bbab619`  
		Last Modified: Tue, 06 Oct 2026 02:11:17 GMT  
		Size: 69.0 MB (68991235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c31a8b8b387158b147c39fce1b3becf121f1e3bff92621478a0d81d3b5e743f8`  
		Last Modified: Tue, 06 Oct 2026 02:11:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d6493324b6d9d847a824159dd3f73bdcb825fade44e8ed7b4d51698e0a5ee20b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e31e5e81b95810edfbfec8a6fe12ca1dacfd9f9b0b3fce3084ec146cf91da84`

```dockerfile
```

-	Layers:
	-	`sha256:9ae52944bd2a3ae90576989efa78b647459c62bcb129b575c7818aee3977f898`  
		Last Modified: Tue, 06 Oct 2026 02:11:14 GMT  
		Size: 5.4 MB (5383668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3362ab987b8ea20e817c2658223089789d84301762e9ef159a36014907b37569`  
		Last Modified: Tue, 06 Oct 2026 02:11:14 GMT  
		Size: 14.4 KB (14381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:148841b14af9f52f1d0b44cd4fa83e33f491daac39184078eb4dc96b785663d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153263670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82deeee8ef3079dbe8f97ecccf85c17385c9aa8818044cf7380fb6ca3b18f90`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:16:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:16:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:16:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:16:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:16:43 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:17:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:17:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:17:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78db3420349e45e69a76a02725c665f29d88173617dc11965273d56762c00587`  
		Last Modified: Tue, 06 Oct 2026 02:17:17 GMT  
		Size: 54.3 MB (54254267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae380c99c9505fbe73c3514f87232f4d3ab44b1c9f2335b6955a0fb7b514c0a7`  
		Last Modified: Tue, 06 Oct 2026 02:17:18 GMT  
		Size: 68.8 MB (68808477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c084d13687733c79ad4183b3d38bb944d358c8e5a9e37afb0a00b6e197067e5`  
		Last Modified: Tue, 06 Oct 2026 02:17:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:98274baea92c60c7a0e43a0a5d86ddc34c8e9ac1a890999e0ba180b94c744580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5404628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dca7664b7f538dddc5495be9ee92cff772c83b76bebedc97e220bbe73815c67`

```dockerfile
```

-	Layers:
	-	`sha256:375cccd348e16baaf6d417103c7fbaae66feb3ecf421e49c7eecbd439c272112`  
		Last Modified: Tue, 06 Oct 2026 02:17:15 GMT  
		Size: 5.4 MB (5390129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3dfdc18199bc2b6dd1c1ab0e9a06f2aff4597ce17433edca37e00a3fcc2d6d9`  
		Last Modified: Tue, 06 Oct 2026 02:17:15 GMT  
		Size: 14.5 KB (14499 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1df2d7dc37f4f582ce5a562cf4b7967447b3dc67db2b33a9b1570360b4a24a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160720681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0cb8aba3f65a8195b2e963235c1f102fe6768df6bb820beb79fc3fb16ccdc7`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 03:51:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:51:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:51:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:51:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:51:35 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:52:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:52:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:52:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3ecc14f58d8a398a1eb851850b529c1a08fbd1643818c5d8211c718dc660c0`  
		Last Modified: Sat, 26 Sep 2026 03:52:52 GMT  
		Size: 52.7 MB (52667114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a35c5a35de2582673517929ec7ad3d0287ce8b067858c8c4691b73fcc83d12e`  
		Last Modified: Sat, 26 Sep 2026 03:52:52 GMT  
		Size: 74.4 MB (74411688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6657ab40938a2383cb9700356d19d8d37fa515196e7c8684594e979d0167c0`  
		Last Modified: Sat, 26 Sep 2026 03:52:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b6225dda9c59f247a624ecf8d3489e5230bef9f71ad083f0ba18c8a9ec483eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d366c2d7935176b6f05e142e7fd597ae8024c8b7f46a44ce0f3998b13c8216ec`

```dockerfile
```

-	Layers:
	-	`sha256:64b3f0438ca6cb7bb64c7faeef53c5948bca6ebb8d59d2aa3e1e19ac5a0443d5`  
		Last Modified: Fri, 02 Oct 2026 07:36:38 GMT  
		Size: 5.4 MB (5388634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb8eefd64e75e81c05c3638824381421c8b98cf48c5e97c74144a44755b76032`  
		Last Modified: Fri, 02 Oct 2026 07:36:37 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
