## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:236fe8484068fb481f3e354bc21dd4e3065c6d510b952ae9d6766cdbc7f6f782
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:05de8bd5b17fac0fb1c2e555aacfa1d68edf6670c7955cb240731defd9f653b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145664734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5268864ec0651a15dd506cac6197e523d26b7d66bdb2aeedc924cfecc9a7eaf6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:53:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:53:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:53:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:53:00 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:53:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:53:00 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:54:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:54:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:54:18 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:54:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:54:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:54:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:54:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115f22ce8a924797e3bfa1d783d11c11c40970165763a5ccd945cbd07534ad89`  
		Last Modified: Tue, 27 Oct 2026 00:54:40 GMT  
		Size: 94.6 MB (94563501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a52a1c7d4e31e74a13164ea4c99b828d5bdf742b433db6d0b9f6833415b3d5`  
		Last Modified: Tue, 27 Oct 2026 00:54:38 GMT  
		Size: 16.7 MB (16742022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c37a61bd3b5d6b089f00276293a39bfa8bce74f5e1f4f98c586662cc0ff28552`  
		Last Modified: Tue, 27 Oct 2026 00:54:37 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41b43fe6d4db48439844bbcd6ced1718f42e27bf4b9b52b72ac28e65df8725d`  
		Last Modified: Tue, 27 Oct 2026 00:54:37 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:03829a688b34a98f8794a7e51a424186a87e75e08289fdde87473bf941b18cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2354393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e965385f8266b2a71729f2e9baae6d1194fdd63394cb17269bb4905288f3a075`

```dockerfile
```

-	Layers:
	-	`sha256:f851bee3f3cd19bf14e8dd2c54c407421f28878baf0d8990a58d65c98efb6045`  
		Last Modified: Tue, 27 Oct 2026 00:54:37 GMT  
		Size: 2.3 MB (2336647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61e36ef6e5f2ad6531850aae19a89454707a0a408743862b3e146047d58f48dc`  
		Last Modified: Tue, 27 Oct 2026 00:54:37 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e2d659145bd17feaa8da567e5fe3e5afd1b53fb3c0ee5292cb635337ea0c85d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144990346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8cac9ca66aeda5d1cf74854bc564d144e7a0e62ab0dfb8ec4e85f2109b9086`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:22:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:22:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:22:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:22:14 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:22:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:22:14 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:23:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:23:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:23:38 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:23:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:23:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:23:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:23:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1142ccb56ec3a1acbfe98a585de48c1ab9b2ce39e6c8228e371f59714e0b73`  
		Last Modified: Wed, 28 Oct 2026 02:23:58 GMT  
		Size: 93.5 MB (93543621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c07c9a1ff387585fabd1e33368fc1113c7412bf5dbcb409ac47a74958eaca8`  
		Last Modified: Wed, 28 Oct 2026 02:23:56 GMT  
		Size: 16.7 MB (16717626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f67e5f3b1b5bee84c522f8c578c604a1e5409d48e5d410886adf3ed4b9ac232`  
		Last Modified: Wed, 28 Oct 2026 02:23:55 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69aa7f76bbfa7295bf232a4773e6af3ed6b08ecd4e5e354054e2dd2e942f21cc`  
		Last Modified: Wed, 28 Oct 2026 02:23:55 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1a0dd2d99f54b9ee293d578ee01d44458431243eb79648970f2c1146e1f477cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2354120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685832010cc12639f86ac5109d0ea9e81bf6947b60facf46919ce61a0493fdb4`

```dockerfile
```

-	Layers:
	-	`sha256:08213afd9b606f36fef8dbacfcbcc935282d2b3e91d4417d3824a2744b64f23c`  
		Last Modified: Wed, 28 Oct 2026 02:23:55 GMT  
		Size: 2.3 MB (2336254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f17a3823b512916bb1447352dc4e6e8a49255b0aedd7e84472e4d06cf82445cd`  
		Last Modified: Wed, 28 Oct 2026 02:23:55 GMT  
		Size: 17.9 KB (17866 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1ca01a5b45006d73062eeef9c9776e3f382743ad9b783f60ff03131a0adf7df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148297050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27c008a0921f93fd89c0240b13d7a48633f118c3b518c57b7f6fc0037ddc49e4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:08:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:08:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:08:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:08:03 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:08:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:08:04 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:11:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:11:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:11:42 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:11:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:11:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:11:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:11:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f071cd1452004b670fe80f61035d40d228deeb03aa70f3d9c8c28fc63a860b`  
		Last Modified: Wed, 21 Oct 2026 11:12:22 GMT  
		Size: 93.4 MB (93350849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b70e6450b6a5ec8f78468402a41e9b4cbcf3f196758bdbea53e4805709eaf37`  
		Last Modified: Wed, 21 Oct 2026 11:12:20 GMT  
		Size: 16.8 MB (16778614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dab3fb5c1769f74bfa07a1dee6b7c19f45e3354e1d239fa19924cc394905ecf`  
		Last Modified: Wed, 21 Oct 2026 11:12:19 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b5c3b40fe05c1dc558cf665d443cbfb0175c70d88b07caf86efd4a8343c7b5`  
		Last Modified: Wed, 21 Oct 2026 11:12:19 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:611b03c44fa1491f7c9cd7796d87f73348c62f8d6c55fbc98923230bdd0e24d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2339353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6dde980dd1f3b1736639d2c9217083bb9d4e6f8b93155a19fdd315e7cfd7c8f`

```dockerfile
```

-	Layers:
	-	`sha256:7cd149e074576836934622183e1936fec55dec669d0ad21ca5d42109fc936733`  
		Last Modified: Wed, 21 Oct 2026 11:12:19 GMT  
		Size: 2.3 MB (2321563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f96948b99424c4b5b1ab3f3f5d07ca4384f9fa4d8e24dc5a4a777ddc44f58c9`  
		Last Modified: Wed, 21 Oct 2026 11:12:19 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
