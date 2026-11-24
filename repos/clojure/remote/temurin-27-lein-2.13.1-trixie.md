## `clojure:temurin-27-lein-2.13.1-trixie`

```console
$ docker pull clojure@sha256:d3ce3b33716b5f5bfd99ebaed6b79fd27be9e841f5795694df48bbdd7565c9bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.1-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:6c143495888023a093d971a8fcee5b6dd3d3abf02f54f8d26f75432ba7fd85fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166468028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e6d1d03461d259655cd8f934da454834d21a5831774d8e5f28dd6a5f147445`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:13:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:13:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:13:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:13:24 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:13:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:13:24 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:14:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:14:41 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:14:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:14:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afef1511f150bfe10d924006a71d5f0ad97fd158b358dd07cf1d4de5bea4341`  
		Last Modified: Tue, 24 Nov 2026 05:15:01 GMT  
		Size: 93.6 MB (93649638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17725cdc6504004b2d5eef6a324d72803874e8792c2a7aee4aa53b2c0122cc69`  
		Last Modified: Tue, 24 Nov 2026 05:14:59 GMT  
		Size: 18.9 MB (18892979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70826c0508e114f641a85ddf6ed1dc76eab8d41ea2dd1708de0564309b89d58`  
		Last Modified: Tue, 24 Nov 2026 05:14:59 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3397ca05b7b0ca397f1d32748574fb2904777478c7d0405bd80f280a3741e0`  
		Last Modified: Tue, 24 Nov 2026 05:14:59 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7ec1e08c93f22dccdc985415591bdb37aedbc1e41f148f715ed95cea7b3876fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19009de1e0d049b1cfdd9fe55e5e7c8cbc6256037436458763aad8d1d12fa0a`

```dockerfile
```

-	Layers:
	-	`sha256:75445f9a77598c5c84f9a9fb0718c6ec85d1e22cfb298fe21eddf73ab8eb43d4`  
		Last Modified: Tue, 24 Nov 2026 05:14:59 GMT  
		Size: 3.8 MB (3789344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeb5eb9434e50d72cdf289947fe569106634c374df4795861dc5989ad95292f5`  
		Last Modified: Tue, 24 Nov 2026 05:14:58 GMT  
		Size: 18.3 KB (18307 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.1-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:9fb7c3de34f1df9e32e010bfaf6323a7af305e206877576c11ec7165338da57b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172420779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da57ab33059d987e0b03f485f04296deaf73dac88e87d8894d4fcfb7153b943a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 20:01:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 20:01:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 20:01:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 20:01:59 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 20:01:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 20:02:02 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:43:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:43:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:43:33 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:43:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:43:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:43:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:43:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6c5dd76cedabd84f043fdc0b063d5baa529c1b95e0188959650b2432e0eb94`  
		Last Modified: Fri, 20 Nov 2026 20:06:00 GMT  
		Size: 91.9 MB (91933317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1678181b306308e079fcc2b9c6106f63cd0ac743cb00697bb208d22d0754a639`  
		Last Modified: Tue, 24 Nov 2026 00:44:05 GMT  
		Size: 22.7 MB (22745733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163d2961d303f38187984d055287a34d4c419d68ca934235f382ee342f63f0e4`  
		Last Modified: Tue, 24 Nov 2026 00:44:05 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325b9235f4b1ef6c74ef13b3d74242dfd83f67c9a6e04a994996ec5522c739e5`  
		Last Modified: Tue, 24 Nov 2026 00:44:04 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3c8354c1829fc755338e40547125d713d8c4ed9d903b3e5a0d37fa614b46f95c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3791540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed53fdfd6018c1c63252e06a4bbceb0dae2b16185247a3a0cf73db8d71e0baf`

```dockerfile
```

-	Layers:
	-	`sha256:9769fad64fe5e425234eafaa0f3ac6481def80df9d49fdb77586cab7f7370bb0`  
		Last Modified: Tue, 24 Nov 2026 00:44:05 GMT  
		Size: 3.8 MB (3773189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c00d77d9caae752acf912b455f4d4c97f7a55eac1602111d4a4497402389ef4e`  
		Last Modified: Tue, 24 Nov 2026 00:44:04 GMT  
		Size: 18.4 KB (18351 bytes)  
		MIME: application/vnd.in-toto+json
