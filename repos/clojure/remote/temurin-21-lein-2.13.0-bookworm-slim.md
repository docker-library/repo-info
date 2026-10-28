## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:a8fd6a6f8002b02513514a48982408e60110e5c26776c009d62ba8dfc46bfd24
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; amd64

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

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:96da98bb7cad2f22932a3dabe566ba4021c4332b365a298b04e08e48e8d177eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213170939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4d93933c5516bc36118b8c6c70bf42ef0705d13c3e0aa941190a3f39e7567d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:33:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:33:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:33:21 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:33:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:33:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:37:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:37:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:37:50 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:37:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:37:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:37:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:37:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916f56caeeabd6654227a0fe59d93f1d7414db3ffd6d7284aa029ff5ef282137`  
		Last Modified: Wed, 21 Oct 2026 10:38:58 GMT  
		Size: 158.3 MB (158282653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091eb9daaca00ee3bd60b53e3d3847333fcda89c8a1167efa266e4d7efeacdd2`  
		Last Modified: Wed, 21 Oct 2026 10:38:55 GMT  
		Size: 18.3 MB (18279434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42ee1e2d84b86130152ff77495af86613bcb72d0c8700ccfed38a94f0be8862`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0353a8ff6ce35ef765f131507af3bdcb41554a1519cceb9df78043643f3915`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3fdf53a854d59aa82ea258105db1f2ce1bffc0408c4fca33f2758a0f6aaccfb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b1cdbe821aec6c778adb0d2cedce4557241f418363bc077fbb7c1b92975432`

```dockerfile
```

-	Layers:
	-	`sha256:88922bc15eafc3db64b7d9377a7dfe6730f26b7d8d6106d1c8ca7f777e5ad8d7`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 2.7 MB (2740008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bb32764ca4721e36da21ece37bc3e418f79f9802e6345c7593e408242264066`  
		Last Modified: Wed, 21 Oct 2026 10:38:53 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
