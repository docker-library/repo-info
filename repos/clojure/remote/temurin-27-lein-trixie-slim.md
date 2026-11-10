## `clojure:temurin-27-lein-trixie-slim`

```console
$ docker pull clojure@sha256:877dbd993355493c703fa9627371efc0ac91405b6f8a985f3779849e9d6c6be8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:887a1eae7757d28137d7ea4e24d83562b66596f03b266d019fa9c024d959eeb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144761404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09c870e05a7b2cd4d0e3a77dad7745c2539d4034d8b81e7fe9dd42c224ff7ebc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:43:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:43:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:43:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:43:40 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:43:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:43:41 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:59 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:44:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:44:59 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:45:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:45:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:45:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:45:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7d38a308aea5f56af953d3a65672a55d9eadfbe60f29093bd94816d1e50540`  
		Last Modified: Tue, 10 Nov 2026 00:45:18 GMT  
		Size: 93.6 MB (93647864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24686d2244253679ddc356e4b7701ce8e6952489f2e1a1f009a1f0fdd4feac49`  
		Last Modified: Tue, 10 Nov 2026 00:45:16 GMT  
		Size: 16.7 MB (16741289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e51f1b1e71f39c2568d0f3bd36aba74666b3e35d167a5e44b8888c9ce7c7c23`  
		Last Modified: Tue, 10 Nov 2026 00:45:16 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0699e752fdbb90004705afc25f1958f1e698e9319d086235484bba105d044b80`  
		Last Modified: Tue, 10 Nov 2026 00:45:16 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:80d45fef004619e860b2343eb6954ada95c6aaf7ab8165fc42e62437c9f0a6dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5dcdc800cdca068a4bdb311bf3e6487944972d64e0c80668623a67d55b766e`

```dockerfile
```

-	Layers:
	-	`sha256:8218826f160171baa5d58191bab3b69b6f837418939b5f1c6459d7947a3c2bad`  
		Last Modified: Tue, 10 Nov 2026 00:45:16 GMT  
		Size: 2.3 MB (2335408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b70204d9fe0c198195fb3cb3eae2a04310d12ad2b356748c64eb0ad8d6075559`  
		Last Modified: Tue, 10 Nov 2026 00:45:16 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3148199b6e96dfc791c5cc86bdac7c331b25bdc2be21ab0f91416299d41c7f95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144098524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db5aa912379059ee4c89ffe99fc998822d5d158c88ee5b6bc6a48f3f992e6da`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:43:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:43:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:43:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:43:10 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:43:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:43:10 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:44:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:44:26 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:44:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:44:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2372f7eae57f7516517e3e7f20568200b1a081557e9b3256380d0ae70c77eaa0`  
		Last Modified: Tue, 10 Nov 2026 00:44:46 GMT  
		Size: 92.7 MB (92660452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cf7ac87a024e3af38ed1126b2098ebaa4e9d107b5df0326c27b354dfabacef`  
		Last Modified: Tue, 10 Nov 2026 00:44:44 GMT  
		Size: 16.7 MB (16707925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ce74cd864afbeb4c8cf289d5833fa96aa34bd1305ad925f2bb2975ffbed93`  
		Last Modified: Tue, 10 Nov 2026 00:44:44 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef6d703e878086c43035c9e3c6d6b4c54169f58e4a62157d1735d89c6d3aacc`  
		Last Modified: Tue, 10 Nov 2026 00:44:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f2cdd705fde06fe815b293946b1a5ae60190c636797d29af7bc48713a6e9f480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea59a104a4a1f33bce14809303d3c0130b509ebc34bcdf0b2a3fc6610b72c3ed`

```dockerfile
```

-	Layers:
	-	`sha256:8e62e6aff6b5c2d0a0eb60e82ece5c284a1528ebd15309499c544391def26d08`  
		Last Modified: Tue, 10 Nov 2026 00:44:44 GMT  
		Size: 2.3 MB (2335015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88a21aa26173b55f319487c917dbe363c3f5ba03329cf1fe389300275ba3c7b5`  
		Last Modified: Tue, 10 Nov 2026 00:44:43 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:402fbac7ca86a2b878a7c2161705dbad6fcb3cbf8ccbc36bb783902cd4c3dffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146888222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f351feb2ae70f6f815483390f723bbc3de0132d21c937d7785b9f1f8bd7085b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 03:02:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 03:02:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 03:02:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 03:02:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 03:02:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 03:02:13 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:05:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 03:05:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 03:05:35 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 03:05:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 03:05:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:05:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:05:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5807e19fb41af88a9628567e61acd810698106b40354a46bc50e5681495a3f`  
		Last Modified: Tue, 10 Nov 2026 03:06:14 GMT  
		Size: 91.9 MB (91925749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a42171986f9063535189c5d7a9099f327ca61b817e1d18c102b8d861a54376`  
		Last Modified: Tue, 10 Nov 2026 03:06:12 GMT  
		Size: 16.8 MB (16778678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e26f27c1e73f4c0b83d865c59d5b6af039b96f54283e846fbbfc5d4d6c36fc`  
		Last Modified: Tue, 10 Nov 2026 03:06:11 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7fd554c1c5be4e9be6b48a9768d1eff26268fa9f4f88c55766fa81efcdcc50`  
		Last Modified: Tue, 10 Nov 2026 03:06:11 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3f33fe5fcee73f71b9d75dd606459c5690fdc6e40b5d1a8bcc8194d7d500b255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2336253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2080766852cf80533fcc1037159ce7db110c0c840defd2981c30dc347241cf1b`

```dockerfile
```

-	Layers:
	-	`sha256:f9c4ef4244340027c79916ecb4215e0c3f3e8a0c47257173354b442bce0927e0`  
		Last Modified: Tue, 10 Nov 2026 03:06:11 GMT  
		Size: 2.3 MB (2318463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a70c41fd09522371f2de7d65691da5a10e8ec35f80f7229e1de4b5699a660a9`  
		Last Modified: Tue, 10 Nov 2026 03:06:11 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
