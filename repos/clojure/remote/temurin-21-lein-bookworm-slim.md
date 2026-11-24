## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:44b14afaebbb48e89cb71d70fb7a4ba8ebf287931a221e1062df18969a623250
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
$ docker pull clojure@sha256:c20ada51e59eee759a8284bda5c678de01f60d82cf72c532cc7745ed6aaa4444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212485377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e814f516b83236e22c2c82a2f6693d63e2d61be9b7e939ed54199ded6d73f6d7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 12:45:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:45:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:45:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:45:23 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:45:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:45:23 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:48:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:48:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:48:13 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:48:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:48:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:48:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:48:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6a60ee161e1a240cbcc7442cf284ad6d493b1dd2b14668095ddc44fbce029cc`  
		Last Modified: Tue, 24 Nov 2026 03:39:18 GMT  
		Size: 32.1 MB (32093504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9f22208f57191484a3394f1dd314e552639892bd64ea87bff9326f71f0a614`  
		Last Modified: Tue, 24 Nov 2026 12:49:04 GMT  
		Size: 157.6 MB (157596452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178ea4655fd32393bfbbfb1736b62eccb8555bc23eb645011898e1bc69aca774`  
		Last Modified: Tue, 24 Nov 2026 12:49:00 GMT  
		Size: 18.3 MB (18279287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df002c90917cf4c8a03f82b73c3a64c2d339f1a228da8bbd5f1d06f683d08e83`  
		Last Modified: Tue, 24 Nov 2026 12:49:00 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc937afc9011a1eee1da7a9711610933c06e9bbdd190d3d9177271e56cf473f`  
		Last Modified: Tue, 24 Nov 2026 12:49:00 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4475976a7025b9ce6d090103835c9b74500901a72617d94d143f086048c4e22e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f16b5ca048b7e070086bb0699e165c49f2f894b5334db55d6cf845f80ee5cf`

```dockerfile
```

-	Layers:
	-	`sha256:4016f3c6a0f1818c32d38f3a7ced329b83c3ef3150ce9c6521946f00ef947ae5`  
		Last Modified: Tue, 24 Nov 2026 12:49:00 GMT  
		Size: 2.7 MB (2738762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:347b87a74c2c06f20d209ef5b05205632d5c88c43d42a88be0c7c354a380f923`  
		Last Modified: Tue, 24 Nov 2026 12:48:59 GMT  
		Size: 18.4 KB (18413 bytes)  
		MIME: application/vnd.in-toto+json
