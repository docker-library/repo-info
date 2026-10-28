## `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:424206a13c29d658eff859d866e6a7c10a1b589ec41341e365f770c0ad4aaed9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:31b71cbc75cc814d5ec3226a3a08613c0fb8dccdada366a3aea93ec5448286a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187374926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab1059dff0f00e94a803c1f8e05f17bf13f4d955b856591acfa9127c2382f9f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:51:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:51:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:51:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:51:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:51:27 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:51:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:51:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:51:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:51:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:51:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923e39ee75d20f0d8acf4e74d81cf4532220dce3a2e2e2cf056a21519cd28440`  
		Last Modified: Tue, 27 Oct 2026 00:52:02 GMT  
		Size: 92.6 MB (92618058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2e990742e8b0636554e4f5161116e09224ecba1acfe38d58836033da0ac1b5`  
		Last Modified: Tue, 27 Oct 2026 00:52:01 GMT  
		Size: 66.5 MB (66507890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9e4307c8d3e43358663167b1683995303ba5433d58a09127b3fed7fcd01be`  
		Last Modified: Tue, 27 Oct 2026 00:51:59 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b31616ff4b26360a68f7af8602cb83de4100d70edf383883e1a82e4793d6124`  
		Last Modified: Tue, 27 Oct 2026 00:51:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2e66697d749722abdff36df3730d8b8990b51029bbab1434c1f6910bf5ecd3d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c440860e125333c7987377dd256f8c835a33a04c94e25fa30749da2f9f19ad`

```dockerfile
```

-	Layers:
	-	`sha256:f49d1308c4173d7bf216e1f9688fe4c2212aaa91fad0a480e588f9b4904de7fb`  
		Last Modified: Tue, 27 Oct 2026 00:51:59 GMT  
		Size: 5.1 MB (5086133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04307952fe9d0e22027b6d3c4454cb750cfd3e1790b0a021b4e4489b9765d1ed`  
		Last Modified: Tue, 27 Oct 2026 00:51:58 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5a5b89c0be447ce290f00d9bbb9c22b708aa3b8317b9c7fcef298e11491293e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186168860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd01178128bd09ed9853d001b445a3ed80ac9bf5c330a134cc508edf8a82dfa7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:21:26 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:21:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:21:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4eb55673ea28f8cbc397854ad298783eeb41f3285b95132d1dd9a350178e044`  
		Last Modified: Wed, 28 Oct 2026 02:22:01 GMT  
		Size: 91.5 MB (91528851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76df5697366d173dabde6afde2c9569f3bf7391b1f9676695ce93a4f6e235e2`  
		Last Modified: Wed, 28 Oct 2026 02:22:00 GMT  
		Size: 66.5 MB (66501016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1780d6aa8214637b941e1e2ef7bc9086861158ac6975a49e544b122adee74e06`  
		Last Modified: Wed, 28 Oct 2026 02:21:58 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f638af3aeebb210770565e746c5849f8ff742f55a9c585c4a661e29ff2314a`  
		Last Modified: Wed, 28 Oct 2026 02:21:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aac3b36a325919b77f3f1607174ee7d0469b81d6735ee29a9cf27d3767f303d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5108736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d87279268f4e7de1253242cdb794d6af18aa5ea6a7196e86bbcaefb4fdfea5`

```dockerfile
```

-	Layers:
	-	`sha256:37a17ac1547a27507ac93216958dca25947591f875ecdf4bea97a3fa46c28f9b`  
		Last Modified: Wed, 28 Oct 2026 02:21:58 GMT  
		Size: 5.1 MB (5091915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7513dde8841cd1f04ac29a686a3ec536855439f664bea6dfb01357950e004213`  
		Last Modified: Wed, 28 Oct 2026 02:21:57 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:782ebee622101c66a2712bc58cfa2709a2902c57581b1a60ebe5fa0912cd83d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.7 MB (195683108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b4d779ad634324e336a299200a72f1c5e04aa62dfb2f15ace2245df48a9524`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:49:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:49:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:49:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:49:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:49:48 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:58:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:58:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:58:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:58:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:58:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7571101308f800b4e51099571fab93477a86d9b3aed49f71193b77a9cfc6132`  
		Last Modified: Wed, 21 Oct 2026 10:53:20 GMT  
		Size: 91.3 MB (91256224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf365ebfbc87a0413e7c7263b84afdf50bfb73f0f9f1ebc9d694335cf5e6841`  
		Last Modified: Wed, 21 Oct 2026 10:58:56 GMT  
		Size: 72.3 MB (72332629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64c1e8c797c5e3da80f6622ba55e249c9b3e973419627f96cbb4a75583a073e`  
		Last Modified: Wed, 21 Oct 2026 10:58:54 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5058364d3b31e79029c22df017549f84f2970bc6f26da72cd8a6eb6ee640a22a`  
		Last Modified: Wed, 21 Oct 2026 10:58:54 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5f6733414660062aae306ef9d1439e342e15b2be0f6a275f5799edb8d7476071
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5091326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20dc5494bbe63e2e7fddffe1b64c0545424fb2fc979fdb1cda2fb64dd9fcb40a`

```dockerfile
```

-	Layers:
	-	`sha256:e1909c2116c6091d598f28bf29aba0a4eb4ed90377559948174dbd85081fc7e3`  
		Last Modified: Wed, 21 Oct 2026 10:58:54 GMT  
		Size: 5.1 MB (5074587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5fb49cb048cf3f2476596dce754fc7f74606125281c7799706a221396dc54f1`  
		Last Modified: Wed, 21 Oct 2026 10:58:53 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json
