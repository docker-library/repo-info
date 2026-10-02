## `sapmachine:21-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:8820e0c07ee7f2e03906b807c2ccf741c595768072d3c6d755df6d1fe81f2739
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:73eac3e7326f8b8ddd2ee4ebce0d99839e41e43bc930fadc4c32ecc49ebb7056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249395805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801ebc6c54ee6dfa4b6aeca70c11131c98a8f21ca91523b81f1d02fdb6adc853`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96ba624316d38ce835d9c430a50b432cadcfb5047735614526500b48258a4787`  
		Last Modified: Fri, 02 Oct 2026 01:40:00 GMT  
		Size: 219.6 MB (219644178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:af17e69aa221ab04932d710db834e28eb40a92121f2bf0bf061f758e9cfc8e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2643715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bb016e8366b53e054407baaf0e546c48ac05fe1684d1c0fe8582bb1ce48f7a`

```dockerfile
```

-	Layers:
	-	`sha256:1f3115f0239ba4ff20a1e6ca69509e2cbf7040b84df26fc9f449fc232feaa335`  
		Last Modified: Fri, 02 Oct 2026 01:39:56 GMT  
		Size: 2.6 MB (2632864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a776a47a6fc82797bdb2a105eb2fa387ce92523614e4bfc67eb567ba36bace`  
		Last Modified: Fri, 02 Oct 2026 01:39:55 GMT  
		Size: 10.9 KB (10851 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:bbf591b55a2fcdd09404b8802d1e3db66e03e8330e15c1dba0a534cfc24dc8fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245502342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9ed118689acc9e272e6295a79ba129f86152edbd9166e203a65da5f301c9582`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1dceada9bf83d51d4e4048a89114242480c34de4607b2d20ac08961a160cc73`  
		Last Modified: Fri, 02 Oct 2026 01:39:49 GMT  
		Size: 217.8 MB (217818206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:11d5352b8deb8fb61924ec71e978e62dae7cbeef9e93ff33914c15fc7a45a132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2643596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed079a9d9ebc440b99f72a0726128cc9ff1238bf50e4d6d7a4c14cc9229f702`

```dockerfile
```

-	Layers:
	-	`sha256:7ec468775c556b46a8a307322ee2a76a4aa95820441def3f33dda77b51234b0c`  
		Last Modified: Fri, 02 Oct 2026 01:39:44 GMT  
		Size: 2.6 MB (2632594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db91a2f39b4067d8bca7799e18eec6a85617df440c23a9d71cc1e0b808e99874`  
		Last Modified: Fri, 02 Oct 2026 01:39:44 GMT  
		Size: 11.0 KB (11002 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3f01a185ac22e27bf42fa481d03f60e52904bb0d9026c68a1aa619ac36bf5bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254249008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9002c0320fb4ca2bd192eb72e94e14bbb0f32b39e23ea8f3561e6d432e669fc4`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:50:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:50:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 05:50:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de09c2246994c9b27dbae317fff6cb95b919039382faef4fba82da238105ed8b`  
		Last Modified: Fri, 02 Oct 2026 05:50:47 GMT  
		Size: 219.5 MB (219545800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:eedcc5153d7b959d599d0f4c86bcf81f899ceeae7842bc53b3e71c252c5e8953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e762bc6d86cbd7f188a2856d495345e43f45d88aa4f213475b54c00cccb4b3da`

```dockerfile
```

-	Layers:
	-	`sha256:2906ee71fbe455ade0df16b1126dbe9f131d44e029a59c30e8f51b4202b46093`  
		Last Modified: Fri, 02 Oct 2026 05:50:42 GMT  
		Size: 2.6 MB (2630474 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80b5dcc51e58956fccf624bb8da14b8f1aeb0a159e4ea096fa1cb5fe6f8e3c52`  
		Last Modified: Fri, 02 Oct 2026 05:50:42 GMT  
		Size: 10.9 KB (10919 bytes)  
		MIME: application/vnd.in-toto+json
