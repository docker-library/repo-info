## `clojure:temurin-21-lein`

```console
$ docker pull clojure@sha256:dc683947a6305330b3d7fb4a395a4c8ba5a6af8cacde45371f7dcc1317fecb5d
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
$ docker pull clojure@sha256:826465219685ca091f4c3e2f4ff25042cfe86c328bb91ea0d67eef01883c7738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 MB (231615949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2099735cac6afef992a7f7e38928fa59a059f8a24799d668e054aa50f74534e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:11:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:11:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:11:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:11:23 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:11:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:11:24 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:12:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:12:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:12:33 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:12:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:12:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:12:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:12:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2ea6820cb07a5c41a8a82cfb7bdb74aca93ddbbe6c0b3013bc2409d20bf800`  
		Last Modified: Tue, 24 Nov 2026 05:12:54 GMT  
		Size: 158.4 MB (158440951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c46109332603f34f14d7bd33b21e9c629e93d3c03f1eb16a05c394077b44639`  
		Last Modified: Tue, 24 Nov 2026 05:12:51 GMT  
		Size: 20.1 MB (20132501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1672b4663fce25becc25af3cd71bc9eb604a3aeaec621f824f63f5ec958ba6b9`  
		Last Modified: Tue, 24 Nov 2026 05:12:50 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e2ef2d58c6ae6d009ba749238b3db4775bc8af3d1b46b0026de08655952fd4`  
		Last Modified: Tue, 24 Nov 2026 05:12:50 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:f911394ae8a224d08861e7d53410cfd588667ff79499b6416c42492d327bedf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33f3015f02f2a1d8b0d6c13f0d2571bfdce85ba215a9c631369ddbe642daea3`

```dockerfile
```

-	Layers:
	-	`sha256:56f40a84d9f20d93000a88171491aac1399242d6d3afcced660975d227362947`  
		Last Modified: Tue, 24 Nov 2026 05:12:50 GMT  
		Size: 4.3 MB (4290506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1921d7e0e69fa5c60dfab7ed58d1a0aa5c56870e0ea3a7a2859316b2cdb9697d`  
		Last Modified: Tue, 24 Nov 2026 05:12:50 GMT  
		Size: 19.0 KB (18984 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein` - unknown; unknown

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

### `clojure:temurin-21-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:9f2da8a7d1a8c2a5718ff6b25cd6dfa4a4fc2c8afedd0a94499b21525ceede3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234837666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3287af2db90dc8ad3e0c043c669c62d352c98f480218a23e1c4f43aab284c3bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 12:44:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:44:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:44:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:44:41 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:44:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:44:41 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:47:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:47:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:47:31 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:47:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:47:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:47:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:47:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39724fd29cfcc406a0f6535aa5d351070a92501854bc6ccb96c23f5f46df82e`  
		Last Modified: Tue, 24 Nov 2026 12:48:23 GMT  
		Size: 157.6 MB (157596526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88b3f3317ccd2fd155bd288c2f1aab2381b95f4b61420272492576a3c5b06f6`  
		Last Modified: Tue, 24 Nov 2026 12:48:20 GMT  
		Size: 20.4 MB (20356488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37807f7e7c8a7e43de10444430550366c7905b34177199295966dfb5d4075668`  
		Last Modified: Tue, 24 Nov 2026 12:48:19 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf74e1c33d26784b5d33543d4ec9525e87f5ee7aa3dc4a0ceabf036ec7a86677`  
		Last Modified: Tue, 24 Nov 2026 12:48:19 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:f6a462be1d2ec85beab43511a308925df58339d4fece8441a1c9b2d1f8a41348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dadc0018597db356fa26002b4df676a5ee4911f563bbde7757dcd898138d3714`

```dockerfile
```

-	Layers:
	-	`sha256:c39d725b61cbdbd7962e279604208cf1df10b816153003af610031311d4fcfb0`  
		Last Modified: Tue, 24 Nov 2026 12:48:19 GMT  
		Size: 4.3 MB (4291133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:595863a42b1ed5757556906e1da250317a6eeb22af8f3f3099d5eba482457fcd`  
		Last Modified: Tue, 24 Nov 2026 12:48:19 GMT  
		Size: 19.0 KB (19040 bytes)  
		MIME: application/vnd.in-toto+json
