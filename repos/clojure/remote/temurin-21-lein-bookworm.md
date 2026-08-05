## `clojure:temurin-21-lein-bookworm`

```console
$ docker pull clojure@sha256:1fb1b46679fb68accd10de2d83b013de66a227d88551c02d9626708bd0e38705
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:d505a42db16df3c020d5b579a99f6406f4112d81ceb8b4bf4d29bc9a3093cdca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231297266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:589b474ec8b8d6de3feb37aec1d68189eb8352c6fbd91ac2b1e532e916c8d8cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:22:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:04 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:22:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:22:04 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:23:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:23:09 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:23:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:23:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:23:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:23:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba45d1ed497ac4f1691b14405429e6ae009feba15a9760a60ce2d729c205084a`  
		Last Modified: Wed, 05 Aug 2026 01:23:31 GMT  
		Size: 158.2 MB (158166969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e90ba5e18045f143e4a36b5d51a0a8073ea81e85f16d130ea7474eeef926283`  
		Last Modified: Wed, 05 Aug 2026 01:23:28 GMT  
		Size: 20.1 MB (20117553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51252523ee886ab7aff989db3f4fc91a262ee56cd9f8dfd34b3f8d54a0e8884c`  
		Last Modified: Wed, 05 Aug 2026 01:23:27 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96d1e8df9c7299901fc3a7f0b4a2e47a59d91020ac561c74fb68963c9502036`  
		Last Modified: Wed, 05 Aug 2026 01:23:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a49d78b55c0b43fc448304d158618bc5cd55582db73c99d5e82943d25dc1afa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d5a390bf033f18b2c154781b55696d0b0e571cc321205eb2bab9ecfd3ae2e74`

```dockerfile
```

-	Layers:
	-	`sha256:c1ae01dd015745bf348aca47cd366c2b36d7a4d14354f418a1094643774be8e4`  
		Last Modified: Wed, 05 Aug 2026 01:23:27 GMT  
		Size: 4.3 MB (4286556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71b36bc1fc55c8a012de204bb462c6f70a0caaff0e9db375096891a2c6c6f8c3`  
		Last Modified: Wed, 05 Aug 2026 01:23:27 GMT  
		Size: 18.4 KB (18387 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fa75a5d461b05a6fdb2283c41a3973e4e2c7586611ccc2b1b8f0143673676297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229300698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0394726851727953e5b004924191830c934efb1867de1710b0bac74413cc6206`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:28:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:28:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:28:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:28:03 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:28:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:28:03 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:29:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:29:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:29:12 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:29:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:29:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:29:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:29:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2a4ae98e52828be1beaa96b5a023c240590519d5dd8f8cf83f6dcae3e30f8e`  
		Last Modified: Wed, 05 Aug 2026 01:29:36 GMT  
		Size: 156.5 MB (156461269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec1c1b8b1d12b8744faab63319bcf9094b19914917be4bf817b3557a8c29d5b`  
		Last Modified: Wed, 05 Aug 2026 01:29:33 GMT  
		Size: 19.9 MB (19940403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac754225ecc6903b05dad713235790e7b43149b4c43eb6b4223aaa8e1559f0c5`  
		Last Modified: Wed, 05 Aug 2026 01:29:32 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884b0fa9a64c337fb685a34ffad83e050018ca618c36f3b73e46c46d23e42b13`  
		Last Modified: Wed, 05 Aug 2026 01:29:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b1807c6e9073fd0f185a6af47696b80a86b06687c8323a8035820f4bf153a8a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b29fd2d1df6b0221adfbddd98c77281366c136afface5ffa01c6903bcd7d4a32`

```dockerfile
```

-	Layers:
	-	`sha256:08f470d1f7e65fe769d005f971954a5f746459741436e9abd1f1902388b9e0ba`  
		Last Modified: Wed, 05 Aug 2026 01:29:32 GMT  
		Size: 4.3 MB (4286195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1afae12a6eca3ae8957f28f5eaf9bcb122e5caf9705144879fdc1a054e062ed`  
		Last Modified: Wed, 05 Aug 2026 01:29:32 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:f6214ba09f130f62a00063ba233339e27e9b1f87d7be1f119e928ba8944d493e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235532192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35258811ce74e19098879140d67b25921e9d14444a55d246b3dd587e4ea60081`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:35:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:35:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:35:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:35:06 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:35:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:35:06 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:37:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:37:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:37:42 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:37:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:37:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:37:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:37:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8017e75b5e8340befe0bb0d34e582d4150e1cdcf9a54c494e4acb067676b5e76`  
		Last Modified: Wed, 05 Aug 2026 03:38:25 GMT  
		Size: 158.3 MB (158343200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e7c28ee50e0f5853ce48256724e84021a56251dfb64f39362c593831401d80`  
		Last Modified: Wed, 05 Aug 2026 03:38:22 GMT  
		Size: 20.3 MB (20331876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9119a775415590083c8fbfc4dbea4b858495ce72fd263e48f553252e6d4af51`  
		Last Modified: Wed, 05 Aug 2026 03:38:22 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4c3af1e9ff94b3defe81f3976607b93b064210853b1265f67fa2487f06852c`  
		Last Modified: Wed, 05 Aug 2026 03:38:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0716dca2a0800eb1a1a4ccf80c9f6d107ab6950696e818555d40ef3ef15574f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2466ef03581c57e4e3ac017250ddbc2beb215570cb854684ddfcbee257bdba95`

```dockerfile
```

-	Layers:
	-	`sha256:c9bac726b14d851ca48d365da5c40887ff36d74b24bf722a973646848b3edfb2`  
		Last Modified: Wed, 05 Aug 2026 03:38:21 GMT  
		Size: 4.3 MB (4288429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6cbe29f5d7fc6897b1dbfd9729534a9d1534c462eb3c91a9f08919ee42b6c10`  
		Last Modified: Wed, 05 Aug 2026 03:38:21 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:aa4ebd343cebd7d7689a6b8930ba40bf4c22d47dac77e0e95f82bf08005de2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218831462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eefc69b1948cf206c96086178b8e9cdca0a68e1b90138a51118ca73fbe2ae3e9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:56:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:56:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:56:51 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:57:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:57:55 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:57:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:57:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85dcfc051b008b074bbe299ec56bc68d10c2e3984c5f1bfe2d60af60ed6ea50d`  
		Last Modified: Tue, 04 Aug 2026 02:58:24 GMT  
		Size: 147.4 MB (147388364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16add03dbc7ad3a915fb8971784b949fdae243993c084b906e1c4ae78b7cdef`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 19.8 MB (19770178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58439bb24efda4a8f11d7f79546c0c1afdc82e69db24b9f08bcc238d44581b4a`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2c73ae5e6c530d760f06e2fa2d4681a9511780e7b8c82e196d93a7247791c8`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:76f7ebe3d1770ee8520c5212dd0d498dc4f506ad4a4cfa8f81d4d0b4951e6918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4296758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ffce61ae4712fb824cf61f664ff217a12f133f87b9bca59c73bf42800e124a`

```dockerfile
```

-	Layers:
	-	`sha256:6d15e7eb1cb7f7605af14840e26212afd86a5c2cd0a351bcfb207d63d6aec71e`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 4.3 MB (4278370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c1d1f3f7d0439e4710df003ed5c7f3cc4583548c1a1fd0c442b86598d460971`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json
