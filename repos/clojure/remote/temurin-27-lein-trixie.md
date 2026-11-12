## `clojure:temurin-27-lein-trixie`

```console
$ docker pull clojure@sha256:1806eccea1a6f89bb7ac15f96797f1cc8c7ca256b0361be344bef9f5dd3d8b14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:ffacae8482b5b1e3febe6f6e31feee3743399fb1b092e6b3308304ef622b75d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166461328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1c7d14d5c58a29619de94869d95ecde98c7b01b1873cd711e5f43b5ad7320f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:52:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:52:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:52:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:52:29 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:52:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:52:29 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:53:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:53:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:53:45 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:53:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:53:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:53:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:53:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf589f49a8e6507868fbb9a73f898ce6ff1fcf9c7a9290e1bbe05501f25b1f0b`  
		Last Modified: Thu, 12 Nov 2026 00:54:07 GMT  
		Size: 93.6 MB (93647848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b74eb995d101c79beb1be704ead49b586cfa805003c3d90653fdcb3476b50`  
		Last Modified: Thu, 12 Nov 2026 00:54:05 GMT  
		Size: 18.9 MB (18884839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b38499ba1def25a446966f0a154044db242b2ca3a6ecc89e5d445c4ad9dbce`  
		Last Modified: Thu, 12 Nov 2026 00:54:04 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1802849169b88ef0444b09f17cbccbf543752de76e8ea49e8bd97fba675747b2`  
		Last Modified: Thu, 12 Nov 2026 00:54:04 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2f85e3a3b0c71a83f7396691bf6cf361f3af67a474624045c77306a21b26be6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36bc87f585b3ab1c1983f502466d66e19a3f85f2648fc61ed371e0cd4a7e7c6`

```dockerfile
```

-	Layers:
	-	`sha256:0ba54dd36c4cffa05f4276a8f12b9984170b8cf48a8bc15534301f48f237ade4`  
		Last Modified: Thu, 12 Nov 2026 00:54:04 GMT  
		Size: 3.8 MB (3790124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d7f0d2d40283e05dd783977f159ef9ee9defb4c2036c07a8e0dd9942a3b6c3d`  
		Last Modified: Thu, 12 Nov 2026 00:54:04 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e036ea7fec0a9571b9b2f104e3a011f320df99815f6ccad52b2731034ca15f73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165798377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69206a4bd6a8a27f229e7de307ea17be343d13d7a7fa8e7c6cb62bc48ae20a07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:07:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:07:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:07:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:07:50 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:07:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:07:50 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:09:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:09:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:09:11 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:09:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:09:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:09:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:09:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7307ff37beebce03a882b9973c1f1711a252f78a74034498cc9f390fbff8b2`  
		Last Modified: Thu, 12 Nov 2026 01:09:33 GMT  
		Size: 92.7 MB (92660455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d84bec610e7ef78a56df23fa11f8d28973066559862e7d17706709509de7472`  
		Last Modified: Thu, 12 Nov 2026 01:09:31 GMT  
		Size: 18.8 MB (18843175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb16ad803a2bd612cc770c99dac60f0d6a9f7f4c4bd37a2aa3b047264a5703`  
		Last Modified: Thu, 12 Nov 2026 01:09:31 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91eecda0970b90153c686f5867946cb50511c728bc642b8d822766fd1074cc76`  
		Last Modified: Thu, 12 Nov 2026 01:09:30 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a4ed0f51b412e56e7a95f8e98636e80391f7859ba20ae7fbc0763dcd022d0c40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3808193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f249fd8ef9965c57c3177395d92104f883919d556b2d0b14c4bcb2fa3a1372b`

```dockerfile
```

-	Layers:
	-	`sha256:606a47f93edd236cd55d50ba1e4073d3d55d5dcedc70d0a82b58cd3c1f264898`  
		Last Modified: Thu, 12 Nov 2026 01:09:31 GMT  
		Size: 3.8 MB (3790361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a51073d935ac0f0e637c4bbc974d589e4dc37a87bfaf9f3f0ba3b6458ad9756`  
		Last Modified: Thu, 12 Nov 2026 01:09:30 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:cd76b24272b81cab63c0f56e628e1b725e4feb7557a0f6944e2359e5355b9372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168607602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7190ae6a979c8a87af32f640fedc44ae06170b888702ea333317e4faa57978a1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 02:57:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:57:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:57:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:57:55 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 02:57:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 02:57:55 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:01:17 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 03:01:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 03:01:17 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 03:01:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 03:01:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:01:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:01:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ae8728f66828010c5601da707c771ad6bf5bcf5f214e92eba88bf7ef5ca6bf`  
		Last Modified: Tue, 10 Nov 2026 03:01:57 GMT  
		Size: 91.9 MB (91925757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300024cd1fbfe701c683b271a5b987f86946b0278cc5615c77e7bd8811b3f422`  
		Last Modified: Tue, 10 Nov 2026 03:01:55 GMT  
		Size: 18.9 MB (18940096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc23e79c4169f51ff3f5d170b0a0ec9d35b5a7c4ddd3382afc9d1d133abeabe6`  
		Last Modified: Tue, 10 Nov 2026 03:01:55 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0f5df43aa3b654b1e64d44ca6e07de89c5863376ba08300f86cbfd06688bff`  
		Last Modified: Tue, 10 Nov 2026 03:01:54 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b9f688f2961b01f9d38264a72c76cfbac37ac1fd3ea387ede2aea4bdc6f8a1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3790952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d837abb095bdeac23599b690b9a90002f1168542558c71757d446685b4f707`

```dockerfile
```

-	Layers:
	-	`sha256:10f113a5fc679ca606156b7071498837c97b8b9f47b8d7e5946d0af7af3471ac`  
		Last Modified: Thu, 12 Nov 2026 08:45:12 GMT  
		Size: 3.8 MB (3773197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c3cce66744b4d3b2c7add4a2250bc38f62b0d9f433d12def219615744772704`  
		Last Modified: Thu, 12 Nov 2026 08:45:12 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
