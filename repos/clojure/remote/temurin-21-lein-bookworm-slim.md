## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:ffe4d7769c8d097f5947b0fc61e21ea5e1fbb5f2d8c4cdc903100874b7443bb0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e5553f2fb2e9cd2988db944b86e38c9fece9fa24ede6b5d1ba019edf36d1d2a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.3 MB (209277088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbfa5d6ff3dcdd5aebb5dac8393c2e4ec95fb1970e05b5ac50311c6338f48165`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:11:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:11:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:11:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:11:21 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:11:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:11:21 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:12:37 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:12:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:12:37 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:12:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:12:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:12:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:12:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d485c62fefe63e63a36c428b5db065a0ac545cf135350008285b743d99bed3`  
		Last Modified: Tue, 24 Nov 2026 05:13:00 GMT  
		Size: 158.4 MB (158440922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5998db4a4f4118ce5c4a29f2f62f1c286af9411fb7fd7c8663f628bc0302dc4`  
		Last Modified: Tue, 24 Nov 2026 05:12:56 GMT  
		Size: 18.1 MB (18072092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89345304f4c8bd319746bf7c4a31b31da06827cb0eebe12be980cfda80838b43`  
		Last Modified: Tue, 24 Nov 2026 05:12:56 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5de3264aa0b4492674b76ae4d01b2a122ca5285ab3777baede18d0c74d75136`  
		Last Modified: Tue, 24 Nov 2026 05:12:56 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bb7b0b61aa51336b173d5a1a650ec3f311426c06cb59f46f037bf81f744ae7c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d03b492e4284846c38cccce4de3be1df006a2786b2ce5fdce46a78f55f2004`

```dockerfile
```

-	Layers:
	-	`sha256:631691403e794da8060f9223f5a126c5a4653de816a0ff9f9199ab2fef0e7248`  
		Last Modified: Tue, 24 Nov 2026 05:12:56 GMT  
		Size: 2.7 MB (2738175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6715af4827178a416c7757c2909e92ddda31c7e91b71a17fa3dc167a716a2bd`  
		Last Modified: Tue, 24 Nov 2026 05:12:56 GMT  
		Size: 18.4 KB (18369 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:38bb97f27ffa15a37e2a378495457b7cd5bda8735c70ae1b580035009306705d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207258586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c2fab534d892308b1294530bc26bd90be7b77305656d985bab677619ea8407d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:04:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:04:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:04:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:04:38 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:04:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:04:38 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:05:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:05:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:05:53 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:05:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:05:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:05:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:05:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b466aa8babd6093efbe023e62665a94f24f00086adc4ded4dd1568bf0cf298e2`  
		Last Modified: Thu, 12 Nov 2026 01:06:17 GMT  
		Size: 156.7 MB (156691631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686a657fa998b874c90a7c5b55fc2be2b2276f190ea19f61ed9502e21cfa8474`  
		Last Modified: Thu, 12 Nov 2026 01:06:14 GMT  
		Size: 17.9 MB (17906465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5d91600c94562d5baa9a40fb315f50ad4e0b3e479712050d90dc6c1ad76c06`  
		Last Modified: Thu, 12 Nov 2026 01:06:14 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7abfad04cda66b15ef160d54e2321c40506b2cc884b779a9b6564df15388bc`  
		Last Modified: Thu, 12 Nov 2026 01:06:13 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:324230d057be373db2792d1d1e57972218ac2bee1a3109984b8833158f4097ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96355c666accab94da6b3e1def30da461cd767bd8baecaf162b2be7a4b77b663`

```dockerfile
```

-	Layers:
	-	`sha256:366e9547eeead5cf48badeec6eb4c6a77e33a7a74642eb7a0e748854e474717b`  
		Last Modified: Thu, 12 Nov 2026 01:06:14 GMT  
		Size: 2.7 MB (2737782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a708c0cd2e42af054b9ac3f95ef36030f5b924d345c68a178d2361a8bdb090e1`  
		Last Modified: Thu, 12 Nov 2026 01:06:13 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1dab35575070118185e6f50625a316c62a63d4112b67119d203745132ec63f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212485243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41411ee588770e0b39a708df75f577df525fab763e306b5e3f41838595ddd271`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:29:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:29:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:29:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:29:28 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:29:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:29:28 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:21:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:21:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:21:56 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:22:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:22:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:22:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:22:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385c042b75343cb298e587225684cd2707d8c8551e26620575cfd326a5c4015e`  
		Last Modified: Fri, 20 Nov 2026 19:33:19 GMT  
		Size: 157.6 MB (157596498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8d657d467cadef4367d1b2b6f02fd3cb7f1572d879ec165d774cc0010c493d`  
		Last Modified: Tue, 24 Nov 2026 00:22:35 GMT  
		Size: 18.3 MB (18279023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8591a3a2b2a88fb72986842a862e78b11dca92d892daadd8776a8886398d2fd9`  
		Last Modified: Tue, 24 Nov 2026 00:22:35 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1055fc37ac8fab5adbb7027d575ab2aeaac7ecb5a79b8b6f5c7f07ec4107eb1d`  
		Last Modified: Tue, 24 Nov 2026 00:22:35 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a1ba39baf016cadc2b0f87da7d45593d7c38a6809705ace5e2c1dbf9864dd9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc2c0fe6f320aad47ecf7a9f87e0a5084ef39c44fced7bc9673809d753bebd7`

```dockerfile
```

-	Layers:
	-	`sha256:d439d8b3d309d8c779635037d7871732167471496bfecf5f3dc986da3a135344`  
		Last Modified: Tue, 24 Nov 2026 00:22:35 GMT  
		Size: 2.7 MB (2738762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:461403cc69a686f3e7711d4df160d5e9d7b1bc3fb598a3d5c790610c95c89188`  
		Last Modified: Tue, 24 Nov 2026 00:22:34 GMT  
		Size: 18.4 KB (18413 bytes)  
		MIME: application/vnd.in-toto+json
