## `clojure:temurin-21-lein-2.13.1-bookworm`

```console
$ docker pull clojure@sha256:9decc55d46dcbb7439c782b8bd233b78adb48e0b8a931e8ec7e9fd045a978324
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.1-bookworm` - linux; amd64

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

### `clojure:temurin-21-lein-2.13.1-bookworm` - unknown; unknown

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

### `clojure:temurin-21-lein-2.13.1-bookworm` - linux; ppc64le

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

### `clojure:temurin-21-lein-2.13.1-bookworm` - unknown; unknown

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
