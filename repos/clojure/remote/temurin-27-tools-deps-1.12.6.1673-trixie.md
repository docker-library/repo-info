## `clojure:temurin-27-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:497b96bced7702660c119acee99bef0de53ff2b38f8aa91890d5d045149b8a33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:dc8d0b301d7a713538c968e732532e1864f776a285dec0d8e9d6744ade380138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225584465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51238c1c506a6b61acd545aab5cdbdba8ac506d21002d35390a3d863fe023d5d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:29:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:29:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:29:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:29:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:29:30 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:29:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:29:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:47 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc121093b8da84a62b248f34c7f8470619c0811680a100284931c7ebfc468eed`  
		Last Modified: Mon, 12 Oct 2026 18:30:05 GMT  
		Size: 93.6 MB (93622456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af5d8463baabd112a247e367060b1fa73fe82d7691943ec49f84988a3e42d2f`  
		Last Modified: Mon, 12 Oct 2026 18:30:10 GMT  
		Size: 82.6 MB (82567763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c1cc1d3fbdb41c4261954d9ecf43467ad4a30a9c240f802f8d0d5d764a594ab`  
		Last Modified: Mon, 12 Oct 2026 18:30:06 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24bd26593cea8985068a2e430f3944a5843a1b159f2f901882c86020de127bbf`  
		Last Modified: Mon, 12 Oct 2026 18:30:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d0f83b86e06bb396ffd802c03e45fb993668679d991f13154b568256f23c7987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01bb690940d47385dcf81c4588acd72b3a72c1527930877f3edc3af73fe491e4`

```dockerfile
```

-	Layers:
	-	`sha256:31ea1a8aacee79aca0f117c3601c3efff238b942697ed5282e494ce3ee13f833`  
		Last Modified: Mon, 12 Oct 2026 18:30:07 GMT  
		Size: 7.4 MB (7442444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8b6a80342f00dc676ce3f2ee66f3e1c87c755751be56a04357be5d3ac870e4c`  
		Last Modified: Mon, 12 Oct 2026 18:30:06 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:73a217b2e2ee836dc0644a0e7d2e6c9ac714e3f4953e40e4dddd93cafa2b9c50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224786236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3f773a39c8ab9cb19cbb9c2b59a3abe313a13142a357d23e4c517a1f3a4a13`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:30:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:30:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:30:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:30:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:30:50 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:31:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:31:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:31:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:31:07 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:31:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c657270645571713b908a1e5cd6f84590a602161c5b460f7ededaaf9a78ad11`  
		Last Modified: Mon, 12 Oct 2026 18:31:30 GMT  
		Size: 92.6 MB (92633103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca09124c41e2b0e0df33920df81c4fb8784535058b1c2a1a783540ea69bed4f3`  
		Last Modified: Mon, 12 Oct 2026 18:31:30 GMT  
		Size: 82.4 MB (82390985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e9f77e3e7d5a3f82f5f5f9bfd2fb439d79ebd5da9be4c8f8531af556a74103`  
		Last Modified: Mon, 12 Oct 2026 18:31:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f20c56d32d308a583bbf0317f85d87c90b92fe51e194f73440670284401b85`  
		Last Modified: Mon, 12 Oct 2026 18:31:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8c6b84a7ed6b79f31dc45b7b7e707d80815cbebbf7c1907776b4bad6d0510968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bad84a2b6042c5f80dbf978df24c23b965ca61c0ce372456f027a18e74521e8`

```dockerfile
```

-	Layers:
	-	`sha256:bd150c2e0a7103e23520d85af5c7461de540d94cc574fd540b2babc499074d84`  
		Last Modified: Mon, 12 Oct 2026 18:31:27 GMT  
		Size: 7.4 MB (7448834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:804bcf6b06feae9c890cc2940f3015ad554683cfba71bf26d846b4b14e33ec8c`  
		Last Modified: Mon, 12 Oct 2026 18:31:27 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:73dfc54461828882856a6b5910b47e2f2f0363dd752836285f6a0b5c4eacc333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233453494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20b05091125b1e5f1a940fb948e30e1b14bf9239d99ad690d1c1cfd63597c60`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:24:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:24:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:24:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:24:57 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:33:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:33:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:33:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:33:25 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:33:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66789879b74ef4c50b963b364c5e07afd02510d614ef8efeba36872b53353679`  
		Last Modified: Mon, 12 Oct 2026 18:30:03 GMT  
		Size: 92.3 MB (92255800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14200b68c85cca86fb653732eca06ed9927d6a6c6706293a3b576091324c47d7`  
		Last Modified: Mon, 12 Oct 2026 18:34:06 GMT  
		Size: 88.0 MB (87989524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb78747636da368b095f7beb7394dd920df111d95ed8de58e6c0ae9d1dfb5c4`  
		Last Modified: Mon, 12 Oct 2026 18:34:04 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990ee60ffcd27c0b8e35f6459574ec87046bbaa4dfedfb57a9259d247352e3c0`  
		Last Modified: Mon, 12 Oct 2026 18:34:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:60c6362a4dd341645ed04c5797d75c05823feac3441dd1e114a123476cfeaf6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7446747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8f2a3dc986661b0119266d2e936afa6505ac6fe6d2746136ccca79b2f75469`

```dockerfile
```

-	Layers:
	-	`sha256:6d0fede4859e2eda6d8ca6a7790c112c09081da863e875f4fa6e6f714103f7ae`  
		Last Modified: Mon, 12 Oct 2026 18:34:04 GMT  
		Size: 7.4 MB (7430799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b1da38c1e2fae379aa7e1948fdbe11e20e8b6ecd8ce5e713c9990d9acaeed8a`  
		Last Modified: Mon, 12 Oct 2026 18:34:03 GMT  
		Size: 15.9 KB (15948 bytes)  
		MIME: application/vnd.in-toto+json
