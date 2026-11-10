## `clojure:temurin-27-lein-trixie`

```console
$ docker pull clojure@sha256:389ed082171eed15919159560d7805431b901aa0da66ef9011eb5d696e1896e7
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
$ docker pull clojure@sha256:76bc1afb48bad71ba0ad95deaf6f6255aada1e652bfcf4cd93dbd43695135684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166461509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890b22299cf50e81f6a40d9328bbc9810a8b8c082d1126ce202caa915a588389`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:43:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:43:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:43:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:43:38 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:43:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:43:38 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:44:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:44:49 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:44:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:44:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b53482de257194a453454817b72309dac99047cae5843f92972f43ebcbc72e`  
		Last Modified: Tue, 10 Nov 2026 00:45:09 GMT  
		Size: 93.6 MB (93647841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a325d33e3650840535ef50f2feabf0c7350a039c7ac33a33d20c185b86f5cd7`  
		Last Modified: Tue, 10 Nov 2026 00:45:07 GMT  
		Size: 18.9 MB (18885023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e322196c7575ad81a89c92d97470f8cd655a9df3f5e87e9501467db5b7eb0c3d`  
		Last Modified: Tue, 10 Nov 2026 00:45:06 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58302eef3573e89ebd4a325e3442c064601be7d72951f731677093914e63cbf`  
		Last Modified: Tue, 10 Nov 2026 00:45:06 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b014662d7ef8670b0677fe752914659a4cef1516e9b34d7918725807c68ee4c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d71e740f82ed2b5218635cc3b639b117045b68e66605320fcdd13e87deb990`

```dockerfile
```

-	Layers:
	-	`sha256:c518c67a12e8f583838fcdc959564162e6aeeb8663f23f2f2b08cfafbe136a39`  
		Last Modified: Tue, 10 Nov 2026 00:45:06 GMT  
		Size: 3.8 MB (3790124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:871f6e2b5bfab36ad51a384e095cf78af2c464972c62d2400100974ce33c8d1a`  
		Last Modified: Tue, 10 Nov 2026 00:45:06 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d2fb5d9395c5010d615d19014b2cb79b371ea483d04da0d031a2b7716a36cc26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165798533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55fcf065b03e51ff1ee572273b7e07a52ada92fea56308ae9f17daec71e392f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:43:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:43:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:43:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:43:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:43:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:43:09 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:44:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:44:27 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:44:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:44:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee608d451563b18d77d4590d18db7803afe316847a4715daa2ad034037ae8d5d`  
		Last Modified: Tue, 10 Nov 2026 00:44:48 GMT  
		Size: 92.7 MB (92660463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c235adb3946774d7206b48ffd048122ffbf81401b591c1f7c2ffd9e5629916`  
		Last Modified: Tue, 10 Nov 2026 00:44:46 GMT  
		Size: 18.8 MB (18843326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d3467c596ace9ce64d58499ac0237f6f6f35e69a49f2d6a460bb1a0d4931e`  
		Last Modified: Tue, 10 Nov 2026 00:44:46 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15112f33e0f83dd2536bfc36170306b1f9a47e465d4c7416e58678d200577c3a`  
		Last Modified: Tue, 10 Nov 2026 00:44:45 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3ceb590517e595b5c342d2d2b702d022093478f0f1c71a64b7ef3a8a3c577142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3808193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9236089f29822a55176dc8a03cce25da3567ae3a3adc5bb708d231a8a920a85`

```dockerfile
```

-	Layers:
	-	`sha256:c6d2cac3f9aba2f8d81f97f4422f7d610458f44a9ecb4755118c2a5bc64123a2`  
		Last Modified: Tue, 10 Nov 2026 00:44:46 GMT  
		Size: 3.8 MB (3790361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1bfb6a2d15c2104ec0f3952a0677c058200958cd37594091910d11989bffc3c`  
		Last Modified: Tue, 10 Nov 2026 00:44:46 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ad34e364b241eeb51ccd7d5fc20c67a7b8af5f7c5560ae4b80d4482b45f85fef
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
$ docker pull clojure@sha256:632c60a2a87e4fe0a9c224d30a75e7839ec748a9350ebda7e0a3ace05d25de0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3790952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f796c8c51f685edac1b1d4ed1c09b8749810f99150380ec804c04358f3a01a03`

```dockerfile
```

-	Layers:
	-	`sha256:0ac59220143e60b9bc4179c8b44a7feda30fbe7a10a57d49d3cde2f5e6b6ff96`  
		Last Modified: Tue, 10 Nov 2026 03:01:54 GMT  
		Size: 3.8 MB (3773197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7308365af6c921e61bcf9fb3ad3bd949b0a4fd6d6e8b0c2e3f17b824e9f50df6`  
		Last Modified: Tue, 10 Nov 2026 03:01:54 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
