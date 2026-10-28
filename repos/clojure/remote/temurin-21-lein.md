## `clojure:temurin-21-lein`

```console
$ docker pull clojure@sha256:c83655998ccbe9d247ce14f151857299ebea086659f796adf35a66115051b8b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein` - linux; amd64

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

### `clojure:temurin-21-lein` - unknown; unknown

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

### `clojure:temurin-21-lein` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein` - unknown; unknown

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

### `clojure:temurin-21-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:d2e193e5db6f89e777d1654760896fa0fcdc81ff8108d40dcdced977fb91a92d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235521373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0dab7b773fce2a8aa901b7bf2ee0df9622893326df8138771bfb2250eb30dc9`
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
# Wed, 28 Oct 2026 10:05:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:05:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:05:12 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:05:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:05:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:05:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:05:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fd9654479c4bb6cdd09df80346641b637a1fb7664815e09e84bb78daf7d5c6`  
		Last Modified: Wed, 28 Oct 2026 10:06:07 GMT  
		Size: 158.3 MB (158282654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e65d1e78eced8f29f63cef58cb7c5b1dbb9a9fbb03b8162887afcbede8c41f`  
		Last Modified: Wed, 28 Oct 2026 10:06:04 GMT  
		Size: 20.4 MB (20356770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d50ef0dbe80b76915d9524c09878330f6b4150859d6d0b80eaae45cccbd3c5c`  
		Last Modified: Wed, 28 Oct 2026 10:06:03 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84deb0f4f1b12370ddff5c1ada369c75c7b990cd71dc7e47a012779212632a45`  
		Last Modified: Wed, 28 Oct 2026 10:06:03 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:47fe63258ba310bd116c66218bd320623ff0e4c0592b83313e82fa1bf0fc3c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a162cb14614b751af90f5c82d616b4e83045da650ab7b2ea0b06a622f6e6c83d`

```dockerfile
```

-	Layers:
	-	`sha256:7612bfde36c18f6ae6b6ee9288d57e8cde061be12d2636811b7eb41a5c80fb0b`  
		Last Modified: Wed, 28 Oct 2026 10:06:03 GMT  
		Size: 4.3 MB (4292379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cb32265569e01b12d8cc169af34a412c456fb48ffdaae71046621bf2a86593`  
		Last Modified: Wed, 28 Oct 2026 10:06:03 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
