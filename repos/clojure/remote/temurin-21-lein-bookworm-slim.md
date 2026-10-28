## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:661f91f9f369988fb8aa92a2005cacf1a597bc84c3aa0606fc3c878533249928
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
$ docker pull clojure@sha256:ea4fc558f1f9b296e74f38d52a6f0dfa328bc0823e32b65ceef38f9f93072ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208953374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe30817a634d47929cf401c790177e9bc4a60307b710944ced9f4589dab3d7e5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:12:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:12:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:12:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:12:40 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:12:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:12:40 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:13:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:13:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:13:56 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:13:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:13:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:13:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:13:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8516c1a1b3e266168ce1b8b99ebcffe7bab04d2ce9ec6bc21bf0182545fb7f`  
		Last Modified: Wed, 28 Oct 2026 02:14:18 GMT  
		Size: 158.1 MB (158117465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54d15b539af3c4ecdcbf3fb735537e627c059c228990abb626d98319aad8f26`  
		Last Modified: Wed, 28 Oct 2026 02:14:16 GMT  
		Size: 18.1 MB (18072831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29820864298832d03463344371db1e0b75433486369e5159a5e10fb9e23d3873`  
		Last Modified: Wed, 28 Oct 2026 02:14:15 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47615138f2daafedbf31f614fe8d452e46c8f119397b7b942460dffc7d0caeee`  
		Last Modified: Wed, 28 Oct 2026 02:14:14 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8448e7e89395e8b78770af3e587760051c25ba8a7382537757a91523067fca9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e71c66c4266f2182b55bb721b37562c39f0b0cf411a877a72f04c07f08673f`

```dockerfile
```

-	Layers:
	-	`sha256:1e2bcf03db49ea1441fe79ec71aa61b2a4cea89724db0d568ca196a68d988eec`  
		Last Modified: Wed, 28 Oct 2026 02:14:15 GMT  
		Size: 2.7 MB (2738175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a38b09c5b81826ae65a87979f45f9acf8307926b4a541951af8a1d3ed90b4cd4`  
		Last Modified: Wed, 28 Oct 2026 02:14:14 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0d6095cf5b14d065dee245bbc65351b6917463e84e5d47171b8498c504432996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (206970704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33083160b4a1b12f5f542c03a6bd30a598afe37f7ce4f761be2b9f75fd8c15c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:19:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:19:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:19:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:19:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:19:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:19:58 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:21:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:21:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:21:15 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:21:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:21:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:21:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:21:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70c842ca803e129dbb155d03e4be441bdf72feea06a4107c7d31bec46a10b64`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 156.4 MB (156400654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cf1af5bcb1c83f6ed2698055ea1df392fc376db51a05bdec0e581bfbbc7cb9`  
		Last Modified: Wed, 28 Oct 2026 02:21:35 GMT  
		Size: 17.9 MB (17916459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc72225474c5d05c1bd19af7b1d51ef80c7958e94c9da24e180f6c6f92b76a21`  
		Last Modified: Wed, 28 Oct 2026 02:21:35 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fce53485252fb4190b00d1e6ec59098ad2fb68376024373a0e7d6387d36bf58`  
		Last Modified: Wed, 28 Oct 2026 02:21:35 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:18062d1f6d92ba7dc9e9e6ce867fce493fa3273c9b17ae28c99af98965a4446f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de45ee611de95258a9980ab707aa97ab4a0eae471830aca2e73bed4add3155e2`

```dockerfile
```

-	Layers:
	-	`sha256:03c677272f6f36868469c1dd22fff992ecc99a27ed18a0ab3865b99edc65bcce`  
		Last Modified: Wed, 28 Oct 2026 02:21:35 GMT  
		Size: 2.7 MB (2737790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ba432c0d41c130007d0abb314ba3bb9c7b97d8ef4328552650c336fa3fbe7d8`  
		Last Modified: Wed, 28 Oct 2026 02:21:34 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8aa04675a12efe2d551c5937fadf9204530cf7c5377e7d5282bc6e13b9857570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213170435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a48f418342f2718f68cda352a6eb243e61f668a7d9264578ae2392e07368feb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:01:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:01:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:01:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:01:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 10:01:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 10:01:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:05:17 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:05:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:05:17 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:05:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:05:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:05:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:05:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fd9654479c4bb6cdd09df80346641b637a1fb7664815e09e84bb78daf7d5c6`  
		Last Modified: Wed, 28 Oct 2026 10:06:07 GMT  
		Size: 158.3 MB (158282654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328f0934bb09fac76419eb586d88ff3925c536738563fde2a1ecc86756352665`  
		Last Modified: Wed, 28 Oct 2026 10:06:04 GMT  
		Size: 18.3 MB (18279304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66157f5e44f8b86508121cc94ff7c7a59514e49385673cfd6e1366baa2606a3`  
		Last Modified: Wed, 28 Oct 2026 10:06:03 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbcee8793f67b53b18bac5b91dca3e305ac426bbd0e45dd5d2d072811b95760`  
		Last Modified: Wed, 28 Oct 2026 10:06:02 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fd4cbbdc73694440936a91b3bdec11681e7fb985a250fdb8bfe362fbaf5beaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53c376543f9dcf4d9482a89fb0606768918e7d44f735b59f1a9fdd74858579c`

```dockerfile
```

-	Layers:
	-	`sha256:ca5a4087b66f7eb7490ff3aad6975340667d8860311386dbc6801a33a2a5a462`  
		Last Modified: Wed, 28 Oct 2026 10:06:02 GMT  
		Size: 2.7 MB (2740008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aff5409f2c629789cb6ada7c9f3845b3b2d1e9468be24420bdd4334583d7ca0`  
		Last Modified: Wed, 28 Oct 2026 10:06:02 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
