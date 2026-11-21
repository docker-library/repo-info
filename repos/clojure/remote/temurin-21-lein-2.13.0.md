## `clojure:temurin-21-lein-2.13.0`

```console
$ docker pull clojure@sha256:627ec1f772a7f8239f137ff64cddd2ae0d685a2ca4adb58bead5fc1be480d941
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:c2ec48420c152879dd618ca862827907e2d6b48e9cefc7c8c4657d3b97f194ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 MB (231616083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e106b86e7b70a48941cd3b1f51cd47708120be868738f10cd84134257f905d7d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:09:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:09:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:09:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:09:30 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:09:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:09:30 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:11:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:11:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:11:04 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:11:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:11:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:11:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:11:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37aac461c6827fbaa3d11da73fd52a635ce11e14225769f9e99dd22daf91a46c`  
		Last Modified: Fri, 20 Nov 2026 18:11:27 GMT  
		Size: 158.4 MB (158440892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca1090aa9b3505092d792b053748c3949c1c8d16c1b2356a9f6369de7ae6961`  
		Last Modified: Fri, 20 Nov 2026 18:11:24 GMT  
		Size: 20.1 MB (20132586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effd6d8de843e1407418175cd9d54e14d6cdbfbde2570d486c994a24a0bb9c03`  
		Last Modified: Fri, 20 Nov 2026 18:11:24 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dae5925580470481100747d9757a05d726463e8922dfdfd16d0c04579f26dc0`  
		Last Modified: Fri, 20 Nov 2026 18:11:23 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:0e488e1c47163d2a4d54f87cc7e4db895af3549401ca9b1a6dd8c114734d148f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbefe5e198c1bc3883e86693dd956b29ba917f855e987c5e717a4c0a1db1d4c0`

```dockerfile
```

-	Layers:
	-	`sha256:a81f2c42b023562cbf3bb6a1c822e8e13d2c42f7cdc61fd191bbb0a8bda2a704`  
		Last Modified: Fri, 20 Nov 2026 18:11:24 GMT  
		Size: 4.3 MB (4290506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc02b99e2359cddb0b5c3770e2051af4439fd59583629228702701218c76b772`  
		Last Modified: Fri, 20 Nov 2026 18:11:23 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c3ce661dbedc0ff03ec0916e5b93b73d8321f50670647a41d19f3b1caa3687d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229587353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e82d55f204d6b2339723ff2c59a33ef0b41986e857e8909844f79bbfd00c52`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:04:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:04:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:04:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:04:42 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:04:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:04:42 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:05:57 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:05:57 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:05:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:05:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:05:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:05:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b466aa8babd6093efbe023e62665a94f24f00086adc4ded4dd1568bf0cf298e2`  
		Last Modified: Thu, 12 Nov 2026 01:06:17 GMT  
		Size: 156.7 MB (156691631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669f87d6643e7d437c3ea4bbe7059a04bc3c7382ed4eb413eadb5ba54876851f`  
		Last Modified: Thu, 12 Nov 2026 01:06:19 GMT  
		Size: 20.0 MB (19967112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f2503f11b02969e1f1a094278568fce122c8ba2f21dc21eeb0d875fa64b1b8`  
		Last Modified: Thu, 12 Nov 2026 01:06:19 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4068ca4c1e260e73a400b36c1112de97b8806575c1759b00d50a931ad63bdf5`  
		Last Modified: Thu, 12 Nov 2026 01:06:18 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:901097cfa637bd74e8b47ed9dd437f6357f85a1dbb1d9a67a981175222824101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c59a4792899941918c88e95ab86e4e990e2561233b6a04774304dbffe709f800`

```dockerfile
```

-	Layers:
	-	`sha256:45872c2077ef7c0c387a5d16d3808025860f58fcc500d3f8ede76b4ac3569067`  
		Last Modified: Thu, 12 Nov 2026 01:06:18 GMT  
		Size: 4.3 MB (4290137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86aeb795b81e6405d27ac94350d58ccdb60af5263b5bbe9816b9f8b5e9698f6b`  
		Last Modified: Thu, 12 Nov 2026 01:06:18 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:17e48b6e8fd357a3245780be3fa434fb5964790ab25d721ffaa43b07578a61c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234838329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5c8ec38ee5ba4a3aa2b3d10633c36ae4e880a85d85c65f03aa87f3c174dc32`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:29:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:29:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:29:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:29:05 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:29:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:29:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:32:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:32:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:32:08 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:32:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:32:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:32:12 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:32:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d4c73842b77997ed6979b59882f09ac83706e753b8cbfa2a63803a48b127e6`  
		Last Modified: Fri, 20 Nov 2026 19:33:05 GMT  
		Size: 157.6 MB (157596488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d994d6cec3cfa63b94a35b4080a88fc5b8c6d2f054810e3d66e174037b78ca7d`  
		Last Modified: Fri, 20 Nov 2026 19:33:02 GMT  
		Size: 20.4 MB (20357087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0846bfc62ccbb6168190a0dfb55f4829abe94868650bb1eae14eecb0ec005073`  
		Last Modified: Fri, 20 Nov 2026 19:33:01 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b2cfd94c4f3591c118a3960895ec1eb3ad4ab242d3683cdb48d2a8807cb723`  
		Last Modified: Fri, 20 Nov 2026 19:33:01 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:37057cdf69ae409365e2bddadd9241a860810903949f2028baa7f7e0aae46e99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89163f882b1892c30867b04c168ce3dd581b75130f193076e7fbd2b8823ae30e`

```dockerfile
```

-	Layers:
	-	`sha256:e1a23b142cf4bd53429f4e71e1e56ab470a06488a2111e28bc76c9794e9ebaa1`  
		Last Modified: Fri, 20 Nov 2026 19:33:01 GMT  
		Size: 4.3 MB (4291133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:594c8ac10b1acb30c923afda32baa9d9cf0ca807240eb15c444a7e80e4177400`  
		Last Modified: Fri, 20 Nov 2026 19:33:01 GMT  
		Size: 18.4 KB (18443 bytes)  
		MIME: application/vnd.in-toto+json
