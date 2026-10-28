## `clojure:temurin-21-lein-bookworm`

```console
$ docker pull clojure@sha256:7e671eb5d1eb9960e02fc293a5a4fc7caf1bde8eba8b6ade6b15eb6165df0538
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:2f34331772ed91ec6022d39f8a313860c81dc84759b013ea9b1f2c660ecb064b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231290622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a6bb1f869bab60f0d0f9c44425930604d52dc6f6d5717b002889e6b3f950ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:12:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:12:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:12:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:12:29 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:12:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:12:29 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:13:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:13:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:13:47 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:13:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:13:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:13:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:13:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3adb8f480fb36f7b5a40c2fea55facf34eb8987b111cbdca2df21d2a2dd7587`  
		Last Modified: Wed, 28 Oct 2026 02:14:09 GMT  
		Size: 158.1 MB (158117470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994e21f2ae77a5cb6debdb8e2d4cfe6d5ba424cc0dcebec9ad1b8fdaf166a749`  
		Last Modified: Wed, 28 Oct 2026 02:14:07 GMT  
		Size: 20.1 MB (20132989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a070a693cb03cacedde0efca3482e10c2ad44df498900cf813a6400dec2c182`  
		Last Modified: Wed, 28 Oct 2026 02:14:06 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbec4b6da18b4c5e46a5fa073541b77b2ffeb12a80f630445cb45006665fb1e1`  
		Last Modified: Wed, 28 Oct 2026 02:14:06 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f0d4144b3f241e839ac9d73f437849057f3d465716f3b4ef78d42fc89983556c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a06bbc86838870cba95d35c163770b5f79681341a652372a8a844419d192b8`

```dockerfile
```

-	Layers:
	-	`sha256:79c38fec6220435d88e320764fcf365666dcc0e4f3b905a89d5b55e7232f9e90`  
		Last Modified: Wed, 28 Oct 2026 02:14:06 GMT  
		Size: 4.3 MB (4290506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:802dac57176d5194dd1ea33f9de2fccf9ba428fab50aef04f69f24ccc0526a86`  
		Last Modified: Wed, 28 Oct 2026 02:14:06 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c673bc800de346f2e7e28b9742290ba54785e08c61cfab6af06bac9ffec9fd4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229298019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d11c23cec02c57d665583efeea9e6657ea073675ff69bdd47b42653d2328d8d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:19:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:19:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:19:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:19:49 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:19:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:19:49 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:21:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:21:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:21:06 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:21:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:21:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:21:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:21:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390b2109dda5f96fb8d039cb50913fb22510543c5a915ab04fc65b5c22413b88`  
		Last Modified: Wed, 28 Oct 2026 02:21:29 GMT  
		Size: 156.4 MB (156400737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026c23b4b03f3a75d9926598d1c2056f6dcbf3c6bacb74597fcd5ce639ab48de`  
		Last Modified: Wed, 28 Oct 2026 02:21:26 GMT  
		Size: 20.0 MB (19976493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90c06bee70f35919cee8f448665f1756b8302ea934d6c0e2e49b65931d2405a`  
		Last Modified: Wed, 28 Oct 2026 02:21:26 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5caedba1dd6c860058630c3030079bba303aec551e8da7545c4b3c097166941c`  
		Last Modified: Wed, 28 Oct 2026 02:21:25 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b412731b1ba5441f6a1e397c1487a63f45a46c737e603bb69a8d3e8854e09ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f14efc454a14e0a86048085a6a76ee0f4a5cacd71651b1669efc1762c755efea`

```dockerfile
```

-	Layers:
	-	`sha256:adba54bd8574e9bb91247542f8e8b8a87034e35d878f6d0cf692ce8684217477`  
		Last Modified: Wed, 28 Oct 2026 02:21:25 GMT  
		Size: 4.3 MB (4290145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4151bc37326979d2cae5545edf57973c6c5bc58aadd4dadffdd47c82d28a22bf`  
		Last Modified: Wed, 28 Oct 2026 02:21:25 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:77a5d82c9f36cba1141ec1ef5b9cbb04cdb4e6709894e987184f16daf41f2a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235519249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdda8927f10b3517f209f235621e6eff95b130a42de75074ae4c4dfeba6ee2c2`
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
# Wed, 21 Oct 2026 10:37:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:37:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:37:51 GMT
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
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916f56caeeabd6654227a0fe59d93f1d7414db3ffd6d7284aa029ff5ef282137`  
		Last Modified: Wed, 21 Oct 2026 10:38:58 GMT  
		Size: 158.3 MB (158282653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03aeedbc4e3c2932bdaeb98a299d7ea73df8c707812a2c63e17518619471b9be`  
		Last Modified: Wed, 21 Oct 2026 10:38:55 GMT  
		Size: 20.4 MB (20356213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50e63427e440504b98b8e1aaa5c9a820fb4007ff43a266ce1ed45eb5518bdaa`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a472e2be435cdcb4713d537c920205c6576e4c4d957ac7d2d67723fcf0a57550`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:73f1edcede0954b2a0ba59cdd6ffb6ee0f984f70deeb0db0528be9a04c912855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff37f70ce9c574dd5c7f8bc855aace060bf26fbabd7ac06ce1233562d9b9f5b`

```dockerfile
```

-	Layers:
	-	`sha256:201a62fa21ab5752b105fb9cce150d1959e358a5670d8a5a45a2fa57922f5bcc`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 4.3 MB (4292379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:409281de425a47962d063be15918ab133d8922ac7cd7f5e52a5e3e5e0e3e6dfe`  
		Last Modified: Wed, 21 Oct 2026 10:38:53 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
