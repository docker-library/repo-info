## `clojure:temurin-25-lein-trixie`

```console
$ docker pull clojure@sha256:5e68499340ea0b10d039a4304cdac090cfd8b28013841e7cbf8cd2ce44d2c8e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b460435b44c3b98fbc3b96113a2f630bffe85bc233e56212ce4d2cd6fb480890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165413256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf1443f7d0356fc9fc6ace496080586d0e2a4fcda77fff51338541acbffd4a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:19:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:19:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:19:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:19:48 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:19:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:19:49 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:21:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:21:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:21:01 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:21:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:21:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:21:03 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:21:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69365a8e63cd304144fca8379938874e8f851c55f66075211ab7d637f1440f19`  
		Last Modified: Wed, 21 Oct 2026 01:21:22 GMT  
		Size: 92.6 MB (92618034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6765878241c9d8ba9cd1a7a701e739ba70a80361d02c500cdb729ed21e5ac2`  
		Last Modified: Wed, 21 Oct 2026 01:21:20 GMT  
		Size: 18.9 MB (18885961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d514cecd2ab63e8870ab49af32a3d8dc98ceeee3a11a4aea5335744fbde905a2`  
		Last Modified: Wed, 21 Oct 2026 01:21:20 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463027f86faa42778d2c5982ee618d1d425e48ada0ec34d6b30ab96e9b5356bd`  
		Last Modified: Wed, 21 Oct 2026 01:21:19 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:565939533273c0cdfbb7401d56c4c0b0b5532623b620d3298d7dbcdfe0f3842e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43c510e006ee65ebff79acb25a03efaf967fe0d46fed191a4e9304e3f2aedd84`

```dockerfile
```

-	Layers:
	-	`sha256:96f9da0c642a70e7dc1ef04d617d4d05e189b9d15d0c3d82353c6badce3e458d`  
		Last Modified: Wed, 21 Oct 2026 01:21:20 GMT  
		Size: 3.8 MB (3794500 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7c59877fc0b6c592299e70d9fd6514d6f0da007904aa072472ddbbf9e288d1`  
		Last Modified: Wed, 21 Oct 2026 01:21:19 GMT  
		Size: 18.3 KB (18344 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f1e78a330baf30552dc0a5552641f79f5bdc4590376fa203a9918bf0557cc948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164649528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac58ad21b6e05f16f5aca1ddafbdb6b6c26cc8ee2784074ad5f80ce4b2608439`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:26:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:26:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:26:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:26:12 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:26:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:26:12 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:27:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:27:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:27:30 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:27:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:27:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:27:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:27:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dc0ccddfb4b87ddab0c3149faf476ed684bdf15727c9bd35bde74e3e5764835`  
		Last Modified: Wed, 21 Oct 2026 01:27:52 GMT  
		Size: 91.5 MB (91528875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe80332a05b172e7c395bc16c8d4a7e0a8444d781d6af41f4028460cb6b56c5`  
		Last Modified: Wed, 21 Oct 2026 01:27:51 GMT  
		Size: 18.8 MB (18843396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255c02907e41af1d7428d804297c6b3c02abe2e9629f00f674cfcbf4ba256c64`  
		Last Modified: Wed, 21 Oct 2026 01:27:50 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11750a915395a3d86178914efb3cefaaf23b2a089efa30fd37c8157daba22bc`  
		Last Modified: Wed, 21 Oct 2026 01:27:50 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:26c06bb471ffb1003bc1cb06c9d6de7faef206e878f436a3a2e850b392b95128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79bef4c5dd71656f53371a7e607a691d981e97eea53b322f81ed1e43d98a133f`

```dockerfile
```

-	Layers:
	-	`sha256:cbadcf0943dcb2ca030e1f6bfeafdc2906296659710ca935e0c017bed8c37a47`  
		Last Modified: Wed, 21 Oct 2026 01:27:50 GMT  
		Size: 3.8 MB (3794761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef85053a4570792eaa3726f60d76be933d360399a36462bd55045d017883b0bf`  
		Last Modified: Wed, 21 Oct 2026 01:27:50 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:496d8360403bd62e25b4d5ce76865ef14081fcf3774c470a6430dd44a2a10d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167918710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23bcb448b6ce9ec4dac04411e6983c6f7aabf89ec33531c08982fc10b52b89ef`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:50:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:50:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:50:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:50:25 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:50:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:50:26 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:53:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:53:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:53:51 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:53:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:53:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:53:55 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:53:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048e1f0e41557690eae11af5f83bc54103283e7cb6f701fe4a358768b52b4bda`  
		Last Modified: Wed, 21 Oct 2026 10:54:40 GMT  
		Size: 91.3 MB (91256233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5f7c930e63ac0fc5b79826fdc8559686e66f3a52d95acf30b20d094935b4fa`  
		Last Modified: Wed, 21 Oct 2026 10:54:38 GMT  
		Size: 18.9 MB (18939292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:babd7ac528f1de1e7b5fa8b1439673348e9f4a16d467618902fe2bd2b2cf6a77`  
		Last Modified: Wed, 21 Oct 2026 10:54:38 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413d26720b7ce1c5b27b53a9a5a3b4e1b7b0afe1624514d2dddb2b19c4576132`  
		Last Modified: Wed, 21 Oct 2026 10:54:37 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8c3ed3ecbb3f6336e96158c833e565ac0cc684b3bee4453c18516f8df994067b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3797222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8050d3df32e6a062f6c291e1b3a53fd2558f7bf3ddcff48091b7426a827eb4`

```dockerfile
```

-	Layers:
	-	`sha256:f1482d42fa34eb210cfd5f44ae0c461d587bddc1d30f7065b1adc1c207b49ab9`  
		Last Modified: Wed, 21 Oct 2026 10:54:38 GMT  
		Size: 3.8 MB (3778822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d10f12a106bef7a4feefd421a890eed8d6c9674dfb7456ec4bb94d02fafa3a79`  
		Last Modified: Wed, 21 Oct 2026 10:54:37 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json
